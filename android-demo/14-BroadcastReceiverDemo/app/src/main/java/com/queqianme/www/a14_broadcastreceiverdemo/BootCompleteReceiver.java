package com.queqianme.www.a14_broadcastreceiverdemo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/19.
 */

public class BootCompleteReceiver extends BroadcastReceiver {
    // 接收开机广播 静态注册实例

    private final String ACTION_BOOT = "android.intent.action.BOOT_COMPLETED";

    // 不要在广播里添加过多逻辑或者进行任何耗时操作,因为在广播中是不允许开辟线程的, 当onReceiver( )方法运行较长时间(超过10秒)还没有结束的话,那么程序会报错(ANR), 广播更多的时候扮演的是一个打开其他组件的角色,比如启动Service,Notification提示, Activity等
    @Override
    public void onReceive(Context context, Intent intent) {
        if (ACTION_BOOT.equals(intent.getAction())) {
            Toast.makeText(context, "开机完毕~", Toast.LENGTH_SHORT).show();
        }
    }
}
