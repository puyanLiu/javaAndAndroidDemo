package com.queqianme.www.a14_broadcastreceiverdemo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.widget.Toast;

import java.util.Objects;

/**
 * Created by liupuyan on 2017/10/30.
 * 短信拦截器
 */

public class SMSReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Toast.makeText(context, "收到短信~~~~~~~~~~~~~~~~~~~", Toast.LENGTH_SHORT).show();
        // 取出短信内容
        Bundle bundle = intent.getExtras();
        // 数组中的每一个元素，就是一条短信
        Objects[] objectses = (Objects[]) bundle.get("pdus");

        for (Object object: objectses) {
            // 把数组中的元素转换成短信对象
            SmsMessage smsMessage = SmsMessage.createFromPdu((byte[]) object);
            // 获取对方号码
            String address = smsMessage.getOriginatingAddress();
            // 获取短信内容
            String body = smsMessage.getMessageBody();
            System.out.println(address + ";" + body);
            if ("13888".equals(address)) {
                // 拦截短信
                abortBroadcast();
            }
        }
    }
}
