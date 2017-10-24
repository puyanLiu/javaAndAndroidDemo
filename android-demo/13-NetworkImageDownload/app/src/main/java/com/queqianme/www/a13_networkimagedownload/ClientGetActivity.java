package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * Created by liupuyan on 2017/10/23.
 */

public class ClientGetActivity extends Activity {

    Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            Toast.makeText(ClientGetActivity.this, (String)msg.obj, Toast.LENGTH_SHORT).show();
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_client_get);
    }

    public void click(View v) {
        EditText tv_name = (EditText)findViewById(R.id.tv_name);
        EditText tv_pwd = (EditText)findViewById(R.id.tv_pwd);

        final String name = tv_name.getText().toString() + "哈哈";
        final String pwd = tv_pwd.getText().toString();

        new Thread() {
            @Override
            public void run() {
                try {
                    String path = "http://192.168.40.182/xampp/myfile/loginGetData.php?username=" + URLEncoder.encode(name, "utf-8") + "&password="
                                + pwd;
                    // 使用httpClient框架
                    // 创建httpClient
                    HttpClient httpClient = new DefaultHttpClient();
                    // 创建get请求对象
                    HttpGet get = new HttpGet(path);
                    // 使用client发送get请求
                    HttpResponse response = httpClient.execute(get);
                    // 获取状态行
                    StatusLine line = response.getStatusLine();
                    // 获取状态码
                    int code = line.getStatusCode();
                    if (code == 200) {
                        // 获取实体
                        HttpEntity entity = response.getEntity();
                        InputStream is = entity.getContent();
                        String text = Tools.getTextFromStream(is);
                        Message message = handler.obtainMessage();
                        message.obj = text;
                        handler.sendMessage(message);
                    }
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                } catch (ClientProtocolException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        }.start();
    }
}
