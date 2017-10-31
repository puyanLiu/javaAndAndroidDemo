package com.queqianme.www.a14_broadcastreceiverdemo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/19.
 */

public class MyBroadcastReceiver extends BroadcastReceiver {

    private final String ACTION_BOOT = "com.queqianme.www.broadcastreceiver.MY_BROADCAST";

    /**
     * 发送广播
     * 发送广播前需要定义一个广播接收器
     *
     * 标准广播 sendBroadcast(intent)
     * 有序广播 sendOrderedBroadcast(intent, null)
     * 可以在清单文件中的Intent-filter通过android:piority="100"设置优先级，值越大优先级越高，越先收到的广播，可以调用abortBroadcast()截断广播
     * 优先级可选值-1000~1000
     * @param context
     * @param intent
     */
    @Override
    public void onReceive(Context context, Intent intent) {
        // 接收到自定义广播
        if (ACTION_BOOT.equals(intent.getAction())) {
            Toast.makeText(context, "收到告白~", Toast.LENGTH_SHORT).show();
        }
    }
}
