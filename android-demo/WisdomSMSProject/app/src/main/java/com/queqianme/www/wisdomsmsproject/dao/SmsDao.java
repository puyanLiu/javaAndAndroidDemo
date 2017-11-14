package com.queqianme.www.wisdomsmsproject.dao;

import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsManager;

import com.queqianme.www.wisdomsmsproject.globle.Constant;
import com.queqianme.www.wisdomsmsproject.receiver.SendSmsReceivr;

import java.util.List;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class SmsDao {
    public static void sendSms(Context context, String address, String body) {
        SmsManager manager = SmsManager.getDefault();
        List<String> smslists = manager.divideMessage(body);

        // 传入action
        Intent intent = new Intent(SendSmsReceivr.ACTION_SEND_SMS);
        // 短信发出后，系统会发送一条广播，告诉我们短信发送是成功还是失败
        PendingIntent sendIntent = PendingIntent.getBroadcast(context, 0, intent, PendingIntent.FLAG_ONE_SHOT);
        for (String text: smslists) {
            // 回发送短信
            manager.sendTextMessage(address, null, body, sendIntent, null);

            // 短信写入数据库
            insertSms(context, address, text);
        }
    }

    public static void insertSms(Context context, String address, String body) {
        ContentValues values = new ContentValues();
        values.put("address", address);
        values.put("body", body);
        values.put("type", Constant.SMS_Type.SMS_SEND);
        context.getContentResolver().insert(Constant.URI.SMS, values);
    }
}
