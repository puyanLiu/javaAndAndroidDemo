package com.queqianme.www.webviewdemoproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.webkit.WebView;

/**
 * Created by liupuyan on 2017/12/14.
 *
 * HTML通过JS读取Android联系人并显示
 */
public class WebViewActivity5 extends AppCompatActivity {

    private WebView wb_webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview4);

        bindViews();
    }

    private void bindViews() {
        wb_webView = findViewById(R.id.wb_webView);
    }
}