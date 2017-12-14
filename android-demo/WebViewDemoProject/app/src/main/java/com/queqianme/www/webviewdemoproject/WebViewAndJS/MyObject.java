package com.queqianme.www.webviewdemoproject.WebViewAndJS;

import android.app.AlertDialog;
import android.content.Context;
import android.webkit.JavascriptInterface;
import android.widget.Toast;

import com.queqianme.www.webviewdemoproject.R;

/**
 * Created by liupuyan on 2017/12/13.
 *
 * js通过该类暴露的方法来调用Android
 */

public class MyObject {
    private Context context;

    public MyObject(Context context) {
        this.context = context;
    }

    // 定义JS需要调用的方法
    // 将显示Toast和对话框的方法暴露给JS脚本调用
    // 被JS调用的方法必须加入@JavascriptInterface注解
    @JavascriptInterface
    public void showToast(String name) {
        Toast.makeText(context, name, Toast.LENGTH_SHORT).show();
    }

    @JavascriptInterface
    public void showDialog() {
        new AlertDialog.Builder(context)
                .setTitle("联系人列表")
                .setIcon(R.mipmap.ic_launcher)
                .setItems(new String[] {"A", "B", "C", "D", "E", "F", "G"}, null)
                .setPositiveButton("确定", null).create().show();
    }
}
