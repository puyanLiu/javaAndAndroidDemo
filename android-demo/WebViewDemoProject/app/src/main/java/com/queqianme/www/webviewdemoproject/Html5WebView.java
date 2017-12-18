package com.queqianme.www.webviewdemoproject;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/12/15.
 */

public class Html5WebView extends WebView {

    private ProgressView progressView; // 进度条
    private Context context;
    private TextView mTextView;

    public Html5WebView(Context context) {
        this(context, null);
    }

    public Html5WebView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Html5WebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        
        this.context = context;
        
        init();
    }

    private void init() {
        // 初始化进度条
        progressView = new ProgressView(context);
        progressView.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp2px(context, 4)));
        progressView.setColor(Color.BLUE);
        progressView.setProgress(10);
        // 把进度条加到webView中
        addView(progressView);

        // 初始化设置
        initWebSettings();
        setWebChromeClient(new MyWebChromeClient());
        setWebViewClient(new MyWebviewClient());
    }

    public void setmTextView(TextView mTextView) {
        this.mTextView = mTextView;
    }

    private void initWebSettings() {

        WebSettings settings = getSettings();
        //默认是false 设置true允许和js交互
        settings.setJavaScriptEnabled(true);
        //  WebSettings.LOAD_DEFAULT 如果本地缓存可用且没有过期则使用本地缓存，否加载网络数据 默认值
        //  WebSettings.LOAD_CACHE_ELSE_NETWORK 优先加载本地缓存数据，无论缓存是否过期
        //  WebSettings.LOAD_NO_CACHE  只加载网络数据，不加载本地缓存
        //  WebSettings.LOAD_CACHE_ONLY 只加载缓存数据，不加载网络数据
        //Tips:有网络可以使用LOAD_DEFAULT 没有网时用LOAD_CACHE_ELSE_NETWORK
        settings.setCacheMode(WebSettings.LOAD_CACHE_ELSE_NETWORK);
        //开启 DOM storage API 功能 较大存储空间，使用简单
        settings.setDomStorageEnabled(true);
        //开启 Application Caches 功能 方便构建离线APP 不推荐使用
        settings.setAppCacheEnabled(true);
        final String cachePath = context.getApplicationContext().getDir("cache", Context.MODE_PRIVATE).getPath();
        settings.setAppCachePath(cachePath);
        settings.setAppCacheMaxSize(5 * 1024 * 1024);
        //设置数据库缓存路径 存储管理复杂数据 方便对数据进行增加、删除、修改、查询 不推荐使用
        settings.setDatabaseEnabled(true);
        final String dbPath = context.getApplicationContext().getDir("db", Context.MODE_PRIVATE).getPath();
        settings.setDatabasePath(dbPath);
    }

    private class MyWebChromeClient extends WebChromeClient {
        // 通过MyWebChromeClient的onProgressChanged方法里面的进度值调用progressView.setProgress()方法去更新进度条，当加载100%的时候让进度条消失
        @Override
        public void onProgressChanged(WebView view, int newProgress) {
            System.out.println("----------------------------" + newProgress);
            if (newProgress == 100) {
                //加载完毕进度条消失
                progressView.setVisibility(View.GONE);
            } else {
                //更新进度
                if (progressView.getVisibility() == GONE) {
                    progressView.setVisibility(VISIBLE);
                }
                progressView.setProgress(newProgress);
            }
            super.onProgressChanged(view, newProgress);
        }

        @Override
        public void onReceivedTitle(WebView view, String title) {
            Log.e("AAA", "title is " + title);
            super.onReceivedTitle(view, title);

            // 设置标题
            if (mTextView != null) {
                mTextView.setText(title);
            }
        }

        @Override
        public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
            return super.onJsAlert(view, url, message, result);
        }

        @Override
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return super.onConsoleMessage(consoleMessage);
        }

        @Override
        public boolean onCreateWindow(WebView view, boolean isDialog, boolean isUserGesture, Message resultMsg) {
            return super.onCreateWindow(view, isDialog, isUserGesture, resultMsg);
        }

        @Override
        public boolean onJsBeforeUnload(WebView view, String url, String message, JsResult result) {
            return super.onJsBeforeUnload(view, url, message, result);
        }

        @Override
        public boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
            return super.onJsConfirm(view, url, message, result);
        }

        @Override
        public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
            return super.onJsPrompt(view, url, message, defaultValue, result);
        }

        @Override
        public void onCloseWindow(WebView window) {
            super.onCloseWindow(window);
        }

        @Override
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, FileChooserParams fileChooserParams) {
            return super.onShowFileChooser(webView, filePathCallback, fileChooserParams);
        }
    }

    private class MyWebviewClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Log.e("AAA", "shouldOverrideUrlLoading 0");

            // uri跳转处理

//            Uri uri = Uri.parse(url);
//            String scheme = uri.getScheme();
//            if (TextUtils.isEmpty(scheme))
//                return true;
//            if (scheme.equals("nativeapi")) {
//                //如定义nativeapi://showImg是用来查看大图，这里添加查看大图逻辑
//                return true;
//            } else if (scheme.equals("http") || scheme.equals("https")) {
//                //处理http协议
//                if (Uri.parse(url).getHost().equals("www.example.com")) {
//                    // 内部网址，不拦截，用自己的webview加载
//                    // 网址重定向，导致点击返回按键，并没有退出
//                    view.loadUrl(url);
//                    return false;
//                } else {
//                    //跳转外部浏览器
//                    Intent intent = new Intent(Intent.ACTION_VIEW, uri);
//                    context.startActivity(intent);
//                    return true;
//                }
//            }
//            return super.shouldOverrideUrlLoading(view, url);


            view.loadUrl(url);
            return false;

        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            Log.e("AAA", "shouldOverrideUrlLoading 1");

            if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP) {
                view.loadUrl(request.getUrl().toString());
            }
            return false;
        }


        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
            Log.e("AAA", "shouldInterceptRequest 0 url is " + url);
            //回调发生在子线程中,不能直接进行UI操作
            return super.shouldInterceptRequest(view, url);
        }

        @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            Log.e("AAA", "shouldInterceptRequest 1 request url is " + request.getUrl().toString());
            return super.shouldInterceptRequest(view, request);
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            Log.e("AAA", "onPageStarted");
            super.onPageStarted(view, url, favicon);
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            Log.e("AAA", "onPageFinished");
            super.onPageFinished(view, url);
        }

        @Override
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Log.e("AAA", "onPageFinished");
            super.onReceivedError(view, request, error);
        }
    }

    /**
     * dp转换成px
     *
     * @param context Context
     * @param dp      dp
     * @return px值
     */
    private int dp2px(Context context, float dp) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dp * scale + 0.5f);
    }
}
