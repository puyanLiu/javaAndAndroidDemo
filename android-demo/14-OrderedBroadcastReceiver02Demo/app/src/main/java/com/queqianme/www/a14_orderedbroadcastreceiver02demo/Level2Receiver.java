package com.queqianme.www.a14_orderedbroadcastreceiver02demo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/31.
 */

public class Level2Receiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // 二级收到的文件
        String order = getResultData();
        Toast.makeText(context, "二级收到文件:" + order, Toast.LENGTH_SHORT).show();
        // 无序广播不能拦截
        abortBroadcast();
    }
}
