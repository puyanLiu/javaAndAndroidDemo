package com.queqianme.www.a15_servicedemo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void start(View v) {
        Intent intent = new Intent(this, MyService.class);
        startService(intent);
    }

    public void stop(View v) {
        Intent intent = new Intent(this, MyService.class);
        stopService(intent);
    }

    public void recorderServiceClick(View v) {
        Intent intent = new Intent(this, RecorderService.class);
        startService(intent);
    }
}
