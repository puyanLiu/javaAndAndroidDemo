package com.queqianme.www.a14_broadcastreceiver02demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btn_send = (Button)findViewById(R.id.btn_send);
        btn_send.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // 标准广播(自定义无序广播)

//                Intent intent = new Intent();
//                intent.setAction("com.queqianme.www.broadcastreceiver.MY_BROADCAST");
//                sendBroadcast(intent);

                // 发送自定义无序广播
                sendBroadcast(new Intent("com.queqianme.www.broadcastreceiver.MY_BROADCAST"));
            }
        });
    }
}
