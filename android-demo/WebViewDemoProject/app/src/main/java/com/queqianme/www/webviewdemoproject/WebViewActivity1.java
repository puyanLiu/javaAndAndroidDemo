package com.queqianme.www.webviewdemoproject;

import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

public class WebViewActivity1 extends AppCompatActivity {

    private WebView webView;
    private long exitTime = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview2);

        webView = new WebView(this);
        // WebViewClient 辅助WebView处理各种通知与请求事件
        webView.setWebViewClient(new WebViewClient() {
            // 设置在webView点击打开的新网页在当前界面显示，而不跳转到新的浏览器中


            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return false;
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP) {
                    webView.loadUrl(request.getUrl().toString());
                }
                return false;
            }
        });
        webView.getSettings().setJavaScriptEnabled(true); // 设置WebView属性,运行执行js脚本
        webView.loadUrl("http://www.baidu.com/"); // 调用loadUrl方法为WebView加入链接
        setContentView(webView); // 调用Activity提供的setContentView将webView显示出来
    }

    /**
     * 当用户点击回退按钮:
     * 1.webView.canGoBack()判断网页是否能后退,可以则goback()
     * 2.如果不可以连续点击两次退出App,否则弹出提示Toast
     */
    @Override
    public void onBackPressed() {
        if (webView.canGoBack()) {
            /**
             * 按了多次还是没有退出当前的APP，后来还是我们手动去点back键通过调用finish方法才能关闭当前的Activity
             *
             * 出现这个问题的原因：网址的重定向问题引起的
             */
            webView.goBack();
        } else {
            if ((System.currentTimeMillis() - exitTime) > 2000) {
                Toast.makeText(this, "再按一次退出程序", Toast.LENGTH_SHORT).show();
                exitTime = System.currentTimeMillis();
            } else {
                super.onBackPressed();
            }
        }
    }
}
