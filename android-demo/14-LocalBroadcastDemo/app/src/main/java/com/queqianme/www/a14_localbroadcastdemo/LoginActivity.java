package com.queqianme.www.a14_localbroadcastdemo;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/19.
 */

public class LoginActivity extends BaseActivity implements View.OnClickListener {

    private SharedPreferences preferences;
    private SharedPreferences.Editor editor;
    private Button btn_login;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        preferences = PreferenceManager.getDefaultSharedPreferences(this);

        btn_login = (Button)findViewById(R.id.btn_login);
        btn_login.setOnClickListener(this);
    }

    @Override
    protected void onStart() {
        super.onStart();
        if (!preferences.getString("user", "").equals("")) {
            Log.i("A", preferences.getString("user", ""));
            Log.i("A", preferences.getString("pwd", ""));
        }
    }

    @Override
    public void onClick(View v) {
        editor = preferences.edit();
        editor.putString("user", "admin");
        editor.putString("pwd", "123");
        editor.commit();
        Intent intent = new Intent(LoginActivity.this, MainActivity.class);
        startActivity(intent);
        Toast.makeText(LoginActivity.this, "登录成功", Toast.LENGTH_SHORT).show();
        finish();
    }
}
