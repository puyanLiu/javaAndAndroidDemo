package com.queqianme.www.a14_broadcastreceiverdemo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/31.
 * 监听SD卡变化
 */

public class SDReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // 判断收到的是什么广播
        // 获取广播中的action
        String action = intent.getAction();
        if (Intent.ACTION_MEDIA_MOUNTED.equals(action)) {
            Toast.makeText(context, "sd卡就绪", Toast.LENGTH_SHORT).show();
        } else if (Intent.ACTION_MEDIA_REMOVED.equals(action)) {
            Toast.makeText(context, "sd卡被拔出了", Toast.LENGTH_SHORT).show();
        } else if (Intent.ACTION_MEDIA_UNMOUNTED.equals(action)) {
            Toast.makeText(context, "sd卡被卸载了", Toast.LENGTH_SHORT).show();
        }
    }
}
