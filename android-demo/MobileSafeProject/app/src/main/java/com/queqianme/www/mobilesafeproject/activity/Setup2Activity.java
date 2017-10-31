package com.queqianme.www.mobilesafeproject.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.queqianme.mobilesafe.app.R;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * 设置向导2
 */
public class Setup2Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_setup2);
    }

    /**
     * 下一步
     * @param v
     */
    public void btn_next(View v) {
        startActivity(new Intent(this, Setup3Activity.class));
        finish();
    }

    /**
     * 上一步
     * @param v
     */
    public void btn_previous(View v) {
        startActivity(new Intent(this, Setup1Activity.class));
        finish();
    }
}