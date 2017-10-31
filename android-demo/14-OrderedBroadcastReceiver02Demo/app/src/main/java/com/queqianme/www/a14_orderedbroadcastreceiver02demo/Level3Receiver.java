package com.queqianme.www.a14_orderedbroadcastreceiver02demo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/31.
 */

public class Level3Receiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // 三级收到的文件
        String order = getResultData();
        Toast.makeText(context, "三级收到文件:" + order, Toast.LENGTH_SHORT).show();
    }
}
