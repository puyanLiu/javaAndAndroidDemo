package com.example.liupuyan.a01_phonecalldemo;

import android.Manifest;
import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // -----------------------------拨打电话
        // 获取布局文件中定义的按钮
        Button btnClick = (Button) findViewById(R.id.btnCallClick);
        // 设置监听
        btnClick.setOnClickListener(new MyListener());

        // -----------------------------点一点按钮
        Button btn0Click = (Button) findViewById(R.id.btn0Click);
        btn0Click.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                System.out.println("Click0被点击啦");
            }
        });
    }

    public void click(View v) {
        System.out.println("click点击");
    }

    public void click1(View v) {
        int id  = v.getId();
        switch (id) {
            case R.id.btn1Click:
                System.out.println("点击第一个按钮");
                break;
            case R.id.btn2Click:
                System.out.println("点击第二个按钮");
                break;
            case R.id.btn3Click:
                System.out.println("点击第三个按钮");
                break;
        }
    }

    // -----------------------------call-----------------------------

    @TargetApi(Build.VERSION_CODES.M)
    private boolean hasPermission() {
        return checkSelfPermission(Manifest.permission.CALL_PHONE) == PackageManager.PERMISSION_GRANTED;
    }

    private void intentToCall(String phoneNumber) {
        // 创建意图
        Intent intent = new Intent();
        // 把动作封装到意图中
        intent.setAction(Intent.ACTION_CALL);
        // 打电话给谁
        intent.setData(Uri.parse("tel:" + phoneNumber));
        // 告诉系统
        startActivity(intent);
    }

    // 动态请求拨打电话权限后，监听用户的点击事件
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 0x11) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                System.out.println("权限被允许");

                // 获取输入框的对象
                EditText et = (EditText) findViewById(R.id.txtPhone);
                // 获取用户输入的号码
                String number = et.getText().toString();
                intentToCall(number);

            } else {
                System.out.println("权限被拒绝");
            }
        }
    }

    class MyListener implements View.OnClickListener {
        @RequiresApi(api = Build.VERSION_CODES.M)
        @Override
        public void onClick(View view) {

            // 获取输入框的对象
            EditText et = (EditText) findViewById(R.id.txtPhone);
            // 获取用户输入的号码
            String number = et.getText().toString();

            if (!hasPermission()) {
                // 在6.0系统中请求某些权限需要检查权限
                int curApiVersion = Build.VERSION.SDK_INT;
                if (curApiVersion >= Build.VERSION_CODES.M) {
                    // 动态请求打电话权限
                    requestPermissions(new String[]{
                            Manifest.permission.CALL_PHONE
                    }, 0x11);
                } else {
                    intentToCall(number);
                }
            } else {
                intentToCall(number);
            }

        }
    }
}

