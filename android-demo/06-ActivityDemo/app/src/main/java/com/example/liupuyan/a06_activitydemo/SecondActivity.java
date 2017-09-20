package com.example.liupuyan.a06_activitydemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/9/16.
 */

public class SecondActivity extends Activity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);

        Intent intent = getIntent();
        TextView tv = (TextView)findViewById(R.id.txtParam);
        tv.setText(intent.getStringExtra("name"));

        Bundle bungle = intent.getExtras();
        TextView tv2 = (TextView)findViewById(R.id.txtBundle);
        tv2.setText(bungle.getString("bundle"));
    }
}

