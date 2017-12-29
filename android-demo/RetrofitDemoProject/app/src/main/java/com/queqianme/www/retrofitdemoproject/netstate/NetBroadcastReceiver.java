package com.queqianme.www.retrofitdemoproject.netstate;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;

/**
 * Created by liupuyan on 2017/12/28.
 */

public class NetBroadcastReceiver extends BroadcastReceiver {
    public NetEvevt evevt = NetActivity.evevt;

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(ConnectivityManager.CONNECTIVITY_ACTION)) {
            int networkState = NetStateUtils.getAPNType(context);

            System.out.println("==========================网络状态" + networkState);

            if (evevt != null) {
                // 接口回调传过去状态的类型
                evevt.onNetChange(networkState);
            }
        }
    }

    // 自定义接口
    public interface NetEvevt {
        void onNetChange(int netMobile);
    }
}
