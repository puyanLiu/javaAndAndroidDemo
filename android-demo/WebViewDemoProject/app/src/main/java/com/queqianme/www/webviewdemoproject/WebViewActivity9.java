package com.queqianme.www.webviewdemoproject;

import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/12/8.
 *
 * 缓存
 *
 * 页面缓存 就是指：保存加载一个网页时所需的HTML，JS，CSS等页面相关的数据以及其他资源，当没网的时候或者 网络状态较差的时候，加载本地保存好的相关数据
 *
 * 通过WebView本身自带的缓存功能来缓存页面，只需为WebView设置开启相关功能，以及设置数据库的缓存路径即可完成缓存
 */
public class WebViewActivity9 extends AppCompatActivity implements View.OnClickListener {

    private WebView wb_webView;
    private long exitTime = 0;
    private Button btn_clearCache;
    private Button btn_reload;

    private static final String APP_CACHE_DIRNAME = "/webcache/"; // web缓存目录
    private static final  String URL = "http://www.baidu.com";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview6);

        btn_reload = (Button) findViewById(R.id.btn_reload);
        btn_clearCache = (Button) findViewById(R.id.btn_clearCache);
        btn_reload.setOnClickListener(this);
        btn_clearCache.setOnClickListener(this);

        bindViews();
    }

    /**
     * 缓存模式
     * 1、LOAD_CACHE_ONLY: 不使用网络，只读取本地缓存数据
     * 2、LOAD_DEFAULT: 根据cache-control决定是否从网络上取数据
     * 3、LOAD_CACHE_NORMAL: API level 17中已经废弃, 从API level 11开始作用同LOAD_DEFAULT模式
     * 4、LOAD_NO_CACHE: 不使用缓存，只从网络获取数据.
     * 5、LOAD_CACHE_ELSE_NETWORK，只要本地有，无论是否过期，或者no-cache，都使用缓存中的数据
     * 建议缓存策略为，判断是否有网络，有的话，使用LOAD_DEFAULT， 无网络时，使用LOAD_CACHE_ELSE_NETWORK
     */
    private void bindViews() {
        wb_webView = (WebView) findViewById(R.id.wb_webView);
        // WebViewClient 辅助WebView处理各种通知与请求事件
        wb_webView.setWebViewClient(new WebViewClient() {
            // 设置在webView点击打开的新网页在当前界面显示，而不跳转到新的浏览器中

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return false;
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP) {
                    wb_webView.loadUrl(request.getUrl().toString());
                }
                return false;
            }
        });

        wb_webView.loadUrl(URL);

        WebSettings settings = wb_webView.getSettings();
        settings.setJavaScriptEnabled(true); // 设置WebView属性,运行执行js脚本

        // 开启缓存功能

        // 设置缓存模式
        settings.setCacheMode(WebSettings.LOAD_CACHE_ELSE_NETWORK);
        // 开启DOM storage API功能
        settings.setDomStorageEnabled(true);
        // 开启database storage API功能
        settings.setDatabaseEnabled(true);
        String cacheDirPath = getFilesDir().getAbsolutePath() + APP_CACHE_DIRNAME;
        System.out.println("------------------------" + cacheDirPath);
        // 设置数据库缓存路径
        settings.setAppCachePath(cacheDirPath);
        settings.setAppCacheEnabled(true);
        System.out.println("----------" + settings.getDatabasePath());
    }

    /**
     * 当用户点击回退按钮:
     * 1.webView.canGoBack()判断网页是否能后退,可以则goback()
     * 2.如果不可以连续点击两次退出App,否则弹出提示Toast
     */
    @Override
    public void onBackPressed() {
        if (wb_webView.canGoBack()) {
            wb_webView.goBack();
        } else {
            if ((System.currentTimeMillis() - exitTime) > 2000) {
                Toast.makeText(this, "再按一次退出程序", Toast.LENGTH_SHORT).show();
                exitTime = System.currentTimeMillis();
            } else {
                super.onBackPressed();
            }
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_reload:
                wb_webView.reload();
                break;
            case R.id.btn_clearCache:
                wb_webView.clearCache(true);
                break;
        }
    }
}