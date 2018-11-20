package com.queqianme.www.mobilesafeproject.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;

import com.queqianme.mobilesafe.app.R;
import com.queqianme.www.mobilesafeproject.adapter.HomeAdapter;
import com.queqianme.www.mobilesafeproject.utils.MD5Utils;
import com.queqianme.www.mobilesafeproject.utils.SharedPreferencesUtils;
import com.queqianme.www.mobilesafeproject.utils.ToastUtils;

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
        // 取消GridView按下出现背景色
        gv_home.setSelector(new ColorDrawable(Color.TRANSPARENT));
    }

    /**
     * 手机防盗弹窗
     */
    private void showSafeDialog() {
        String pwd = SharedPreferencesUtils.getString(getApplicationContext(), "password", null);
        if (TextUtils.isEmpty(pwd)) {
            // 设置密码弹窗
            showSetPwdDialog();
        } else {
            // 输入密码弹窗
            showInputPwdDialog();
        }
    }

    /**
     * 输入密码弹窗
     */
    private void showInputPwdDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        // 给dialog布局
        View view = View.inflate(this, R.layout.dialog_input_pwd, null);
        final AlertDialog dialog = builder.create();
        dialog.setView(view);

        Button btn_ok = (Button)view.findViewById(R.id.btn_ok);
        Button btn_cancel = (Button) view.findViewById(R.id.btn_cancel);

        final EditText et_pwd = (EditText) view.findViewById(R.id.et_pwd);

        btn_ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String pwd = et_pwd.getText().toString().trim();

                if (TextUtils.isEmpty(pwd)) {
                    ToastUtils.showToast(getApplicationContext(), "输入内容不能为空");
                } else {
                    String savePwd = SharedPreferencesUtils.getString(getApplicationContext(), "password", null);
                    if (MD5Utils.encode(pwd).equals(savePwd)) {
                        dialog.dismiss();

                        // 跳转到手机防盗
                        startActivity(new Intent(getApplicationContext(), LostAndFindActivity.class));
                    } else {
                        ToastUtils.showToast(getApplicationContext(), "密码输入错误");
                    }
                }
            }
        });

        btn_cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.dismiss();
            }
        });

        dialog.show();
    }

    /**
     * 设置密码弹窗
     */
    private void showSetPwdDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        // 给dialog布局
        View view = View.inflate(this, R.layout.dialog_set_pwd, null);
        final AlertDialog dialog = builder.create();
        dialog.setView(view);

        Button btn_ok = (Button)view.findViewById(R.id.btn_ok);
        Button btn_cancel = (Button) view.findViewById(R.id.btn_cancel);

        final EditText et_pwd = (EditText) view.findViewById(R.id.et_pwd);
        final EditText et_pwd_confirm = (EditText) view.findViewById(R.id.et_pwd_confirm);

        btn_ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String pwd = et_pwd.getText().toString().trim();
                String pwdConfirm = et_pwd_confirm.getText().toString().trim();

                if (TextUtils.isEmpty(pwd) || TextUtils.isEmpty(pwdConfirm)) {
                    ToastUtils.showToast(getApplicationContext(), "输入内容不能为空");
                } else {
                    if (pwd.equals(pwdConfirm)) {
                        SharedPreferencesUtils.putString(getApplicationContext(), "password", MD5Utils.encode(pwd));

                        dialog.dismiss();

                        // 跳转到手机防盗
                        startActivity(new Intent(getApplicationContext(), LostAndFindActivity.class));
                    } else {
                        ToastUtils.showToast(getApplicationContext(), "两次密码不一致");
                    }
                }
            }
        });

        btn_cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.dismiss();
            }
        });

        dialog.show();
    }

    private void bindsView() {
        gv_home = (GridView) findViewById(R.id.gv_home);
    }


}
