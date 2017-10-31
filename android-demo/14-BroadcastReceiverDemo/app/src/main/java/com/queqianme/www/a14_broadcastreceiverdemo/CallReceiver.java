package com.queqianme.www.a14_broadcastreceiverdemo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/30.
 * IP拨号器
 */

public class CallReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Toast.makeText(context, "拨打电话~~~~~~~~~~~~~~~~~~~", Toast.LENGTH_SHORT).show();
        // 取出广播中的号码
        String number = getResultData();
        String newNumber = "17591" + number;
        // 把修改后的号码放入广播中
        setResultData(newNumber);
        // 拦截是无效的
//        abortBroadcast();
    }
}
