package com.queqianme.www.a14_broadcastreceiverdemo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/31.
 * 应用安装卸载侦听
 */

public class AppsReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // 判断收到的是什么广播
        String action = intent.getAction();
        // 获取安装更新卸载的什么应用
        Uri uri = intent.getData();
        if (Intent.ACTION_PACKAGE_ADDED.equals(action)) {
            Toast.makeText(context, uri + "被安装了", Toast.LENGTH_SHORT).show();
        } else if (Intent.ACTION_PACKAGE_REMOVED.equals(action)) {
            Toast.makeText(context, uri + "被删除了", Toast.LENGTH_SHORT).show();
        } else if (Intent.ACTION_PACKAGE_REPLACED.equals(action)) {
            Toast.makeText(context, uri + "被更新了", Toast.LENGTH_SHORT).show();
        }
    }
}
