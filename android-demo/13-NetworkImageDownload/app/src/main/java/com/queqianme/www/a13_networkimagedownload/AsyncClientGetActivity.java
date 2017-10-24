package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;

import org.apache.http.Header;

/**
 * Created by liupuyan on 2017/10/23.
 */

public class AsyncClientGetActivity extends Activity {

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

        String path = "http://192.168.40.182/xampp/myfile/loginGetData.php";
        // 使用异步HttpClient发送get请求
        AsyncHttpClient client = new AsyncHttpClient();

        // 把要提交的数据封装到rp中
        RequestParams requestParams = new RequestParams();
        requestParams.put("username", name);
        requestParams.put("password", pwd);
        // 发送get请求
        client.get(path, requestParams, new MyHandle());
    }

    class MyHandle extends AsyncHttpResponseHandler {

        @Override
        public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
            Toast.makeText(AsyncClientGetActivity.this, new String(responseBody), Toast.LENGTH_SHORT).show();
        }

        @Override
        public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
            Toast.makeText(AsyncClientGetActivity.this, "请求失败", Toast.LENGTH_SHORT).show();
        }
    }
}
