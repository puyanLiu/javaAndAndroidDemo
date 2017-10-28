package com.example.liupuyan.a06_activitydemo;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/10/25.
 */
public class HandleActivity extends AppCompatActivity {

    private TextView tv_name;
    private TextView tv_content;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_handle);

        tv_name = (TextView) findViewById(R.id.tv_name);
        tv_content = (TextView) findViewById(R.id.tv_content);

        Intent intent = getIntent();
        tv_name.setText(intent.getStringExtra("name"));
        tv_content.setText(intent.getStringExtra("content"));
    }

    public void btn_name_click(View v) {
        Intent intent = new Intent();
        intent.putExtra("name", tv_name.getText());
        setResult(100, intent);
        finish();
    }

    public void btn_content_click(View v) {
        Intent intent = new Intent();
        intent.putExtra("content", tv_content.getText());
        setResult(200, intent);
        finish();
    }
}