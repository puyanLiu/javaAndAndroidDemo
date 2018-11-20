package com.queqianme.www.mobilesafeproject.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.GridView;
import android.widget.TextView;

import com.queqianme.mobilesafe.app.R;
import com.queqianme.www.mobilesafeproject.utils.SharedPreferencesUtils;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * 手机防盗界面
 */
public class LostAndFindActivity extends AppCompatActivity {

    private TextView txt_reSetup;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 判断是否设置过
        boolean configed = SharedPreferencesUtils.getBoolean(this, "configed", false);
        if (configed) {
            setContentView(R.layout.activity_lost_and_find);
        } else {
            // 进入设置向导界面
            startActivity(new Intent(this, Setup1Activity.class));
            finish();
        }

        bindsView();

        txt_reSetup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(LostAndFindActivity.this, Setup1Activity.class));
            }
        });
    }

    private void bindsView() {
        txt_reSetup = (TextView) findViewById(R.id.txt_reSetup);
    }
}