package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/10/23.
 */

public class ClientPostActivity extends Activity {

    Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            Toast.makeText(ClientPostActivity.this, (String)msg.obj, Toast.LENGTH_SHORT).show();
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_client_post);
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
                    String path = "http://192.168.40.182/xampp/myfile/loginPostData.php";
                    // 使用httpClient框架
                    // 创建httpClient
                    HttpClient httpClient = new DefaultHttpClient();
                    // 发送post请求
                    HttpPost post = new HttpPost(path);
                    // 把要提交的数据封装至post中
                    List<NameValuePair> parameters = new ArrayList<NameValuePair>();
                    BasicNameValuePair b1 = new BasicNameValuePair("username", name);
                    BasicNameValuePair b2 = new BasicNameValuePair("password", pwd);
                    parameters.add(b1);
                    parameters.add(b2);
                    // 创建实体对象
                    UrlEncodedFormEntity entity = new UrlEncodedFormEntity(parameters, "utf-8");
                    // 把实体对象封装至post对象中
                    post.setEntity(entity);
                    // 使用client发送get请求
                    HttpResponse response = httpClient.execute(post);
                    // 获取状态行
                    StatusLine line = response.getStatusLine();
                    // 获取状态码
                    int code = line.getStatusCode();
                    if (code == 200) {
                        InputStream is = response.getEntity().getContent();
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
