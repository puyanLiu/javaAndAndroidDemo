package com.queqianme.www.a14_localbroadcastdemo;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.widget.Button;

public class MainActivity extends BaseActivity {

    private MyBcReceiver localReceiver;
    private LocalBroadcastManager localBroadcastManager;

    /**
     * 本地广播
     *
     * 使用LocalBroadcastManager管理广播
     * 1、调用LocalBroadcastManager.getInstance()获得实例
     * 2、调用.registerReceiver()注册广播
     * 3、调用.sendBroadReceiver()发送广播
     * 4、调用.unregisterReceiver()取消注册
     *
     * 本地广播无法通过静态注册方式来接受
     * @param savedInstanceState
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        localBroadcastManager = LocalBroadcastManager.getInstance(this);

        // 初始化广播接收者，设置过滤器
        localReceiver = new MyBcReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.queqianme.www.mybcreceiver.LOGIN_OTHER");
        localBroadcastManager.registerReceiver(localReceiver, intentFilter);

        Button btn_send = (Button)findViewById(R.id.btn_send);
        btn_send.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent("com.queqianme.www.mybcreceiver.LOGIN_OTHER");
                localBroadcastManager.sendBroadcast(intent);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        localBroadcastManager.unregisterReceiver(localReceiver);
    }
}
