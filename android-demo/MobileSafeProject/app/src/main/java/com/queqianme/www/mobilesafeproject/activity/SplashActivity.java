package com.queqianme.www.mobilesafeproject.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.queqianme.www.mobilesafeproject.R;
import com.queqianme.www.mobilesafeproject.model.AppVersionModel;
import com.queqianme.www.mobilesafeproject.utils.LogUtils;
import com.queqianme.www.mobilesafeproject.utils.PackageUtils;
import com.queqianme.www.mobilesafeproject.utils.SignUtils;
import com.queqianme.www.mobilesafeproject.utils.StreamUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by liupuyan on 2017/10/19.
 */

public class SplashActivity extends Activity {

    private AppVersionModel mAppVersionModel;

    private static final int CODE_UPDATE_DIALOG = 1;
    private static final int CODE_ENTER_HOME = 2;
    private static final int CODE_URL_ERROR = 3;
    private static final int CODE_NETWORK_ERROR = 4;
    private static final int CODE_JSON_ERROR = 5;

    private RelativeLayout rl_root;
    private TextView tv_progress;

    private Handler mHandle = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case CODE_UPDATE_DIALOG:
                    shoUpdateDialog();
                    break;
                case CODE_ENTER_HOME:
                    enterHome();
                    break;
                case CODE_URL_ERROR:
                    Toast.makeText(getApplicationContext(), "网络链接错误", Toast.LENGTH_SHORT).show();
                    break;
                case CODE_NETWORK_ERROR:
                    Toast.makeText(getApplicationContext(), "网络请求错误", Toast.LENGTH_SHORT).show();
                    break;
                case CODE_JSON_ERROR:
                    Toast.makeText(getApplicationContext(), "数据解析错误", Toast.LENGTH_SHORT).show();
                    break;
            }
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        bindsView();

        checkVersion();

        // 渐变动画
        AlphaAnimation anim = new AlphaAnimation(0.2f, 1);
        anim.setDuration(2000);
        rl_root.startAnimation(anim);
    }

    private void bindsView() {
        TextView tv_name = (TextView)findViewById(R.id.tv_name);
        ProgressBar pb_loading = (ProgressBar)findViewById(R.id.pb_loading);

        // 5C:26:70:86:CA:77:F1:58:3C:86:F5:AA:97:FE:33:36:3B:8B:00:6D
        LogUtils.i("A", SignUtils.getCertificateSHA1Fingerprint(this));

        tv_name.setText("版本号：" + PackageUtils.getVersionName(this));

        rl_root = (RelativeLayout) findViewById(R.id.rl_root);
        tv_progress = (TextView) findViewById(R.id.tv_progress);
    }

    private void checkVersion() {
        new Thread() {
            @Override
            public void run() {
                String path = "http://192.168.40.182/xampp/myfile/appVersion.json";
                Message message = mHandle.obtainMessage();
                long startTime = System.currentTimeMillis();
                try {
                    URL url = new URL(path);
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("GET");
                    conn.setConnectTimeout(2000);
                    conn.setReadTimeout(2000);

                    if (conn.getResponseCode() == 200) {
                        InputStream is = conn.getInputStream();
                        String result = StreamUtils.stream2String(is);
                        LogUtils.i("A", result);
                        JSONObject json = new JSONObject(result);
                        mAppVersionModel = new AppVersionModel(json.getString("versionName"), json.getInt("versionCode"), json.getString("title"), json.getString("detail"), json.getString("url"));

                        if (PackageUtils.getVersionCode(SplashActivity.this) < mAppVersionModel.getVersionCode()) {
                            // 有更新
                            message.what = CODE_UPDATE_DIALOG;
                        } else {
                            // 无更新
                            message.what = CODE_ENTER_HOME;
                        }
                    }
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                    message.what = CODE_URL_ERROR;
                } catch (IOException e) {
                    e.printStackTrace();
                    message.what = CODE_NETWORK_ERROR;
                } catch (JSONException e) {
                    e.printStackTrace();
                    message.what = CODE_JSON_ERROR;
                } finally {
                    // 延迟两秒
                    long endTime = System.currentTimeMillis();
                    long timeUsed = endTime - startTime;
                    if (timeUsed < 2000) {
                        try {
                            Thread.sleep(2000 - timeUsed);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    mHandle.sendMessage(message);
                }
            }
        }.start();
    }

    /**
     * 升级弹框
     */
    private void shoUpdateDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("发现新版本：" + mAppVersionModel.getVersionName());
        builder.setMessage(mAppVersionModel.getDetail());
        // 不可取消，点击返回按钮弹窗不消失，体验不好
//        builder.setCancelable(false);
        builder.setPositiveButton("立即更新", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                downloadApk();
            }
        });
        builder.setNegativeButton("以后再说", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                enterHome();
            }
        });
        // 用户取消弹框的监听，比如点返回按键
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public void onCancel(DialogInterface dialog) {
                enterHome();
            }
        });
        builder.show();
    }

    private void downloadApk() {
        // 判断sdcard是否存在
        if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
            String path = Environment.getExternalStorageDirectory() + "/app-release.apk";
            tv_progress.setVisibility(View.VISIBLE);
            HttpUtils utils = new HttpUtils();
            utils.download(mAppVersionModel.getUrl(), path, new RequestCallBack<File>() {

                @Override
                public void onLoading(long total, long current, boolean isUploading) {
                    super.onLoading(total, current, isUploading);
                    tv_progress.setText("下载进度：" + (int)(100 * current / total) + "%");
                }

                @Override
                public void onSuccess(ResponseInfo<File> responseInfo) {
                    String p = responseInfo.result.getAbsolutePath();
                    LogUtils.i("A", "下载成功" + p);

                    // 跳到系统安装界面
                    Intent intent = new Intent();
                    intent.setAction(Intent.ACTION_VIEW);
                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                    intent.setDataAndType(Uri.fromFile(responseInfo.result), "application/vnd.android.package-archive");
                    startActivityForResult(intent, 0);
                }

                @Override
                public void onFailure(HttpException e, String s) {
                    e.printStackTrace();
                    Toast.makeText(getApplicationContext(), s, Toast.LENGTH_SHORT).show();
                }
            });
        } else {
            Toast.makeText(this, "没有找到sdcard", Toast.LENGTH_SHORT).show();
        }
    }

    private void enterHome() {
        Intent intent = new Intent(this, HomeActivity.class);
        startActivity(intent);
        finish();
    }

    // 用户取消安装，会回调此方法
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        LogUtils.i("A", "点击取消回调");
        enterHome();
    }
}
