package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.TextView;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class HtmlActivity extends Activity {

    private TextView tv_html;

    Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            tv_html.setText((String)msg.obj);
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_html);

        tv_html = (TextView)findViewById(R.id.tv_html);
    }

    public void click(View v) {
        new Thread() {
            @Override
            public void run() {
                try {
                    String path = "http://192.168.40.182/xampp/myfile/baidu.html";
                    URL url = new URL(path);
                    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                    connection.setRequestMethod("GET");
                    connection.setConnectTimeout(8000);
                    connection.setReadTimeout(8000);
                    if (connection.getResponseCode() == 200) {
                        // 获取服务器返回流
                        InputStream is = connection.getInputStream();
                        String text = Tools.getTextFromStream(is);

                        Message message = handler.obtainMessage();
                        message.obj = text;
                        handler.sendMessage(message);
                    }
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }.start();

    }
}
