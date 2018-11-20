package com.queqianme.www.mobilesafeproject.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.view.View;

import com.queqianme.mobilesafe.app.R;
import com.queqianme.www.mobilesafeproject.utils.SharedPreferencesUtils;
import com.queqianme.www.mobilesafeproject.view.SettingItemView;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * 设置向导2
 */
public class Setup2Activity extends AppCompatActivity {

    private SettingItemView siv_bing_sim;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_setup2);

        bindViews();

        bindEvents();

    }

    private void bindViews() {
        siv_bing_sim = (SettingItemView) findViewById(R.id.siv_bing_sim);
    }

    private void bindEvents() {
        siv_bing_sim.setOnClickListener(new View.OnClickListener() {

            private String simSerialNumber;

            @Override
            public void onClick(View view) {
                siv_bing_sim.setChecked(!siv_bing_sim.isChecked());

                // 获取手机序列码
                TelephonyManager telephonyManager = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
                //simSerialNumber = telephonyManager.getSimSerialNumber();
                //SharedPreferencesUtils.putString(getApplicationContext(), "sim_number", );

            }
        });
    }

    /**
     * 下一步
     * @param v
     */
    public void btn_next(View v) {
        startActivity(new Intent(this, Setup3Activity.class));
        finish();

        overridePendingTransition(R.anim.anim_activity_in, R.anim.anim_activity_out);
    }

    /**
     * 上一步
     * @param v
     */
    public void btn_previous(View v) {
        startActivity(new Intent(this, Setup1Activity.class));
        finish();

        overridePendingTransition(R.anim.anim_activity_previous_in, R.anim.anim_activity_previous_out);
    }
}