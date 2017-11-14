package com.queqianme.www.wisdomsmsproject.receiver;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.queqianme.www.wisdomsmsproject.utils.ToastUtils;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class SendSmsReceivr extends BroadcastReceiver {

    public static final String ACTION_SEND_SMS = "com.queqianme.www.sms.send";

    @Override
    public void onReceive(Context context, Intent intent) {
        int code = getResultCode();
        if (code == Activity.RESULT_OK) {
            ToastUtils.showToast(context, "发送成功");
        } else {
            ToastUtils.showToast(context, "发送失败");
        }
    }
}
