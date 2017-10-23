package com.queqianme.www.mobilesafeproject.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.queqianme.www.mobilesafeproject.R;
import com.queqianme.www.mobilesafeproject.model.AppVersionModel;
import com.queqianme.www.mobilesafeproject.utils.LogUtils;
import com.queqianme.www.mobilesafeproject.utils.PackageUtils;
import com.queqianme.www.mobilesafeproject.utils.StreamUtils;

import org.json.JSONException;
import org.json.JSONObject;

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
    }

    private void bindsView() {
        TextView tv_name = (TextView)findViewById(R.id.tv_name);
        ProgressBar pb_loading = (ProgressBar)findViewById(R.id.pb_loading);

        tv_name.setText("版本号：" + PackageUtils.getVersionName(this));
    }

    private void checkVersion() {
        new Thread() {
            @Override
            public void run() {
                String path = "http://192.168.40.182/xampp/myfile/appVersion.json";
                Message message = mHandle.obtainMessage();
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
                    mHandle.sendMessage(message);
                }
            }
        }.start();
    }

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
