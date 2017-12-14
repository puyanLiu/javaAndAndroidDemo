package com.queqianme.www.webviewdemoproject;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/12/8.
 */
public class WebViewActivity3 extends AppCompatActivity implements View.OnClickListener {

    private Button btn_top;
    private Button btn_refresh;
    private Button btn_back;
    private Button btn_sq;
    private TextView txt_title;
    private MyWebView wb_webView;
    private long exitTime = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview3);

        bindViews();
    }

    private void bindViews() {
        btn_back = (Button) findViewById(R.id.btn_back);
        btn_refresh = (Button) findViewById(R.id.btn_refresh);
        btn_top = (Button) findViewById(R.id.btn_top);
        btn_sq = (Button) findViewById(R.id.btn_sq);
        txt_title = (TextView) findViewById(R.id.txt_Title);
        wb_webView = (MyWebView) findViewById(R.id.wb_webView);

        btn_back.setOnClickListener(this);
        btn_refresh.setOnClickListener(this);
        btn_top.setOnClickListener(this);
        btn_sq.setOnClickListener(this);

        wb_webView.getSettings().setJavaScriptEnabled(true); // 设置WebView属性,运行执行js脚本

        // 设置缩放以及自适应屏幕
        // getSettings() 返回一个WebSettings对象,用来控制WebView的属性设置
        WebSettings settings = wb_webView.getSettings();
        settings.setUseWideViewPort(true); // 设定支持viewport
        settings.setLoadWithOverviewMode(true); // 自适应屏幕
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false); // 隐藏缩放控件
        settings.setSupportZoom(true); // 设定支持缩放

        // 对字体缩放
        settings.setTextZoom(60);

        // 设置初始的缩放比例 25%
        wb_webView.setInitialScale(25);

        // 设置webView的Cookie数据
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
//        String url = "https://www.csdn.net/";
        String url = "http://m.queqianme.com/";
        cookieManager.setCookie(url, "设置的cookie字符串");

//        wb_webView.loadUrl("https://www.baidu.com");
        wb_webView.loadUrl(url);
        // 为WebView指定一个WebChromeClient对象,WebChromeClient专门用来辅助WebView处理js的对话框,网站title,网站图标,加载进度条等
        wb_webView.setWebChromeClient(new WebChromeClient() {
            // 设置获取网站的title

            @Override
            public void onReceivedTitle(WebView view, String title) {
                super.onReceivedTitle(view, title);
                txt_title.setText(title);
            }
        });

        // 为WebView指定一个WebViewClient对象.WebViewClient可以辅助WebView处理各种通知,请求等事件
        wb_webView.setWebViewClient(new WebViewClient() {
            // 设置在webView点击打开的新网页在当前界面显示，而不跳转到新的浏览器中

            // 控制对新加载的url的处理，返回true，说明主程序处理webView不做处理，返回false意味着webView会对其进行处理
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                // 网址重定向，导致点击返回按键，并没有退出
                view.loadUrl(url);
                return true;

//                return false;
            }

            // 在webview里打开新链接
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP) {
                    wb_webView.loadUrl(request.getUrl().toString());
                }
                return true;

//                return false;
            }

            // 通知主程序网页开始加载
            @Override
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                super.onPageStarted(view, url, favicon);
            }

            // 通知主程序，网页加载完毕
            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);

                // 获取webView的Cookie数据（Cookie代表用户唯一标识的字符串）
                CookieManager cookieManager = CookieManager.getInstance();
                String cookieStr = cookieManager.getCookie(url);
                System.out.println("url:--------" + url +"---------Cookies:-----------" + cookieStr);
            }

            // 更新历史记录
            @Override
            public void doUpdateVisitedHistory(WebView view, String url, boolean isReload) {
                super.doUpdateVisitedHistory(view, url, isReload);
            }

            // 通知主程序WebView即将加载指定url的资源
            @Override
            public void onLoadResource(WebView view, String url) {
                super.onLoadResource(view, url);
            }

            // ViewView的缩放发生改变时调用
            @Override
            public void onScaleChanged(WebView view, float oldScale, float newScale) {
                super.onScaleChanged(view, oldScale, newScale);
            }

            // 控制webView是否处理按键时间，如果返回true，则webView不处理，返回false则处理
            @Override
            public boolean shouldOverrideKeyEvent(WebView view, KeyEvent event) {
                return super.shouldOverrideKeyEvent(view, event);
            }

            // 遇到不可恢复的错误信息时调用
            @Override
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                super.onReceivedError(view, request, error);
            }
        });

        // 判断是否显示神奇的按钮
        wb_webView.setOnSrcollChangedCallback(new MyWebView.OnSrcollChangedCallback() {

            @Override
            public void onScroll(int dx, int dy) {
                if (dy > 0) {
                    btn_sq.setVisibility(View.VISIBLE);
                } else {
                    btn_sq.setVisibility(View.GONE);
                }
            }
        });

        // 滚动条相关属性
//        wb_webView.setHorizontalScrollBarEnabled(false); // 水平不显示
//        wb_webView.setVerticalScrollBarEnabled(false); // 垂直不显示

//        wb_webView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_OVERLAY); // 滚动条在WebView内侧显示

        wb_webView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY); // 滚动条在WebView外侧显示

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_back:
                finish();
                break;
            case R.id.btn_refresh:
                wb_webView.reload(); // 刷新当前界面
                break;
            case R.id.btn_top:
                wb_webView.setScrollY(0); // 滚动到顶部
                break;
            case R.id.btn_sq:
                wb_webView.setScrollY(0);
                btn_sq.setVisibility(View.GONE);
                break;
        }
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
}