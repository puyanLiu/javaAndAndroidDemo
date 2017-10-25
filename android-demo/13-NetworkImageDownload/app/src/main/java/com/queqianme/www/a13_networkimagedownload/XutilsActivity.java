package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;

import java.io.File;

/**
 * Created by liupuyan on 2017/10/24.
 */

public class XutilsActivity extends Activity {

    String path = "http://192.168.40.182/xampp/myfile/QQ_V6.1.0.dmg";

    private TextView tv_progress;
    private ProgressBar pb;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_xutils);

        tv_progress = (TextView)findViewById(R.id.tv_progress);
        pb = (ProgressBar)findViewById(R.id.pb);
    }

    public void click(View v) {
        HttpUtils utils = new HttpUtils();
        utils.download(path,
                getCacheDir() + "QQ_V6.1.0.dmg",
                true, // 是否支持断点续传
                true, // 如果响应头中包含文件名，下载完成后自动重名后
                new RequestCallBack<File>() {
            @Override
            public void onSuccess(ResponseInfo<File> responseInfo) {
                TextView tv_success = (TextView)findViewById(R.id.tv_success);
                tv_success.setText(responseInfo.result.getPath());
            }

            @Override
            public void onFailure(HttpException error, String msg) {
                TextView tv_failure = (TextView)findViewById(R.id.tv_failure);
                tv_failure.setText(msg);
            }

                    @Override
                    public void onLoading(long total, long current, boolean isUploading) {
                        pb.setMax((int)total);
                        pb.setProgress((int)current);
                        tv_progress.setText(current * 100 / total + "%");
                    }
                });
    }
}
