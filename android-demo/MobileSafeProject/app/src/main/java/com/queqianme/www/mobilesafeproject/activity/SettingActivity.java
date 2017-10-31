package com.queqianme.www.mobilesafeproject.activity;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.queqianme.mobilesafe.app.R;
import com.queqianme.www.mobilesafeproject.utils.SharedPreferencesUtils;
import com.queqianme.www.mobilesafeproject.view.SettingItemView;

/**
 * Created by liupuyan on 2017/10/28.
 */
public class SettingActivity extends AppCompatActivity {

    private SettingItemView siv_update;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_setting);

        bindViews();

        initUpdate();
    }

    private void bindViews() {
        siv_update = (SettingItemView) findViewById(R.id.siv_update);
    }

    private void initUpdate() {
        boolean autpUpdate = SharedPreferencesUtils.getBoolean(this, "auto_update", true);
        siv_update.setChecked(autpUpdate);

        siv_update.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                siv_update.setChecked(!siv_update.isChecked());
                SharedPreferencesUtils.putBoolean(getApplicationContext(), "auto_update", siv_update.isChecked());
            }
        });
    }
}