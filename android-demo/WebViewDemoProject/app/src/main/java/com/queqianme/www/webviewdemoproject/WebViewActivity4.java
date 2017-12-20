package com.queqianme.www.webviewdemoproject;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;

import com.queqianme.www.webviewdemoproject.WebViewAndJS.MyObject;

/**
 * Created by liupuyan on 2017/12/13.
 *
 对于Android调用JS代码的方法有2种：
 1. 通过WebView的loadUrl（）
 2. 通过WebView的evaluateJavascript（）

 对于JS调用Android代码的方法有3种：
 1. 通过WebView的addJavascriptInterface（）进行对象映射
 2. 通过 WebViewClient 的shouldOverrideUrlLoading ()方法回调拦截 url
 3. 通过 WebChromeClient 的onJsAlert()、onJsConfirm()、onJsPrompt（）方法回调拦截JS对话框alert()、confirm()、prompt（） 消息
 */
public class WebViewActivity4 extends AppCompatActivity {

    private WebView wb_webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_webview4);

        bindViews();

//        webview_demo1();

        webview_demo2();
    }

    private void webview_demo2() {
        // 获得WebSetting对象，支持js脚本，可访问文件，支持缩放，以及编码方式
        WebSettings webSettings = wb_webView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setAllowFileAccess(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        // 设置WebChromeClient，处理网页中的各种js事件
        wb_webView.setWebChromeClient(new MyWewbChromeClient());
        wb_webView.loadUrl("file:///android_asset/demo2.html");
    }

    @SuppressLint("JavascriptInterface")
    private void webview_demo1() {
        WebSettings webSettings = wb_webView.getSettings();
        // 设置webView允许调用js
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        // 将Object对象暴露给JS，调用addjavascriptInterface
        if (Build.VERSION.SDK_INT > Build.VERSION_CODES.JELLY_BEAN) {
            // 进行对象映射
            wb_webView.addJavascriptInterface(new MyObject(WebViewActivity4.this), "Android");
        }
        wb_webView.loadUrl("file:///android_asset/demo1.html");
    }

    private void bindViews() {
        wb_webView = findViewById(R.id.wb_webView);
    }

    /**
     * 需要自定义一个类实现WebChromeClient类，并重写三种不同对话框的处理方法
     * 分别重写onJsAlert,onJsConfirm,onJsPrompt方法
     */
    class MyWewbChromeClient extends WebChromeClient {
        @Override
        public boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
            // 创建一个Builder来显示网页中的对话框
            new AlertDialog.Builder(WebViewActivity4.this)
                    .setTitle("Alert对话框")
                    .setMessage(message)
                    .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            result.confirm();
                        }
                    })
                    .setCancelable(false)
                    .show();
            return true;
        }

        @Override
        public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
            new AlertDialog.Builder(WebViewActivity4.this)
                    .setTitle("Confirm对话框")
                    .setMessage(message)
                    .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            result.confirm();
                        }
                    })
                    .setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            result.cancel();
                        }
                    })
                    .setCancelable(false)
                    .show();
            return true;
        }

        @Override
        public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, final JsPromptResult result) {
            // 获取一个LayoutInflater对象factory，加载指定布局成相应对象
            LayoutInflater inflater = LayoutInflater.from(WebViewActivity4.this);
            final View view1 = inflater.inflate(R.layout.prompt_view, null);
            ((TextView)view1.findViewById(R.id.txt_text)).setText(message);
            ((EditText)view1.findViewById(R.id.et_edit)).setHint(defaultValue);
            // 定义对话框上的确定按钮
            new AlertDialog.Builder(WebViewActivity4.this)
                    .setTitle("Prompt对话框")
                    .setView(view1)
                    .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            String value = ((EditText) view1.findViewById(R.id.et_edit)).getText().toString();
                            result.confirm(value);
                        }
                    })
                    .setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            result.cancel();
                        }
                    })
                    .show();
            return true;
        }
    }
}