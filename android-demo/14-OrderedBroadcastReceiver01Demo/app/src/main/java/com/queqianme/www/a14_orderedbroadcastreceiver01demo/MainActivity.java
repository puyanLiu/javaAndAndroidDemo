package com.queqianme.www.a14_orderedbroadcastreceiver01demo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void click(View v) {
        // 发送自定义有序广播

        Intent intent = new Intent();
        intent.setAction("com.center.level");
        // resultReceiver: 在所有广播接收者都收到广播之后，才会收到，一定是最后一个收到，并且一定能收到
        sendOrderedBroadcast(intent, null, new MyReceiver(), null, 0, "每人发100斤大米", null);
    }

    class MyReceiver extends BroadcastReceiver {

        @Override
        public void onReceive(Context context, Intent intent) {
            String order = getResultData();
            Toast.makeText(context, "反贪局收到文件：" + order, Toast.LENGTH_SHORT).show();
        }
    }
}
