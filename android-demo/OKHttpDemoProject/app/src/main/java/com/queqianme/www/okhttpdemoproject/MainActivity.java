package com.queqianme.www.okhttpdemoproject;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends BaseActivity {

    private Button btn_request;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn_request = (Button) findViewById(R.id.btn_request);
        btn_request.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                login();
            }
        });
    }

    private void login() {
//        Params params = new Params();
//        params.put("mobile", "13430264654");
//        params.put("vcode", "1234");
//        ApiClient.getInstance().post("https://api.jieqianme.net/api/app/v1/user/login", params, new ApiClient.RequestCallBack() {
//            @Override
//            public void onSuccess(String data) {
//            }
//
//            @Override
//            public void onFailure(int errCode, String msg) {
//            }
//        });

        Params params = new Params();
        params.put("mobile", "13430264654");
        params.put("vcode", "1234");
        ApiClient.getInstance().post("https://api.jieqianme.net/api/app/v1/user/login", params, new ApiClient.RequestCallBack() {
            @Override
            public void onSuccess(String data) {
            }

            @Override
            public void onFailure(int errCode, String msg) {
            }
        });

    }
}
