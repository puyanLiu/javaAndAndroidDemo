package com.queqianme.www.mobilesafeproject.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;

import com.queqianme.www.mobilesafeproject.R;
import com.queqianme.www.mobilesafeproject.adapter.HomeAdapter;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class HomeActivity extends Activity {

    private GridView gv_home;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        bindsView();

        gv_home.setAdapter(new HomeAdapter(getApplicationContext()));
        gv_home.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                switch (position) {
                    case 0:
                        // 手机防盗
                        showSafeDialog();
                        break;
                    case 8:
                        // 设置中心
                        startActivity(new Intent(getApplicationContext(), SettingActivity.class));
                        break;
                }
            }
        });
    }

    private void showSafeDialog() {
    }

    private void bindsView() {
        gv_home = (GridView) findViewById(R.id.gv_home);
    }


}
