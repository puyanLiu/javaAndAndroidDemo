package com.queqianme.www.circleanimationproject;

import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    Handler h = new Handler() {
        @Override
        public void handleMessage(Message msg) {

            a.setPercent(msg.arg1);
        }
    };
    private Custom1View a;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        a = (Custom1View)findViewById(R.id.v_a);
        new Thread() {
            @Override
            public void run() {
                for (int i = 0; i < 330; i++) {
                    try {
                        Thread.sleep(10);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }

                    Message m = h.obtainMessage();
                    m.arg1 = i;
                    h.sendMessage(m);
                }
            }
        }.start();


    }
}
