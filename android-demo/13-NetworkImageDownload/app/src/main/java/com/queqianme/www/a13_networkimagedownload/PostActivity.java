package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by liupuyan on 2017/10/23.
 */

public class PostActivity extends Activity {

    Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            Toast.makeText(PostActivity.this, (String)msg.obj, Toast.LENGTH_SHORT).show();
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_post);
    }

    public void click(View v) {
        EditText tv_name = (EditText)findViewById(R.id.tv_name);
        EditText tv_pwd = (EditText)findViewById(R.id.tv_pwd);

        final String name = tv_name.getText().toString();
        final String pwd = tv_pwd.getText().toString();

        new Thread() {
            @Override
            public void run() {
                String path = "http://192.168.40.182/xampp/myfile/loginPostData.php";
                URL url = null;
                try {
                    url = new URL(path);
                    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                    connection.setRequestMethod("POST");
                    connection.setConnectTimeout(8000);
                    connection.setReadTimeout(80000);

                    // 添加post请求头中自动添加的属性
                    connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    String content = "username=" + name + "&password=" + pwd;
                    // 流里数据长度
                    connection.setRequestProperty("Content-Length", content.length() + "");

                    // 打开连接对象的输出流
                    connection.setDoOutput(true);
                    // 获取连接对象的输出流
                    OutputStream os = connection.getOutputStream();
                    // 把数据写入输出流中
                    os.write(content.getBytes());

                    if (connection.getResponseCode() == 200) {
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
