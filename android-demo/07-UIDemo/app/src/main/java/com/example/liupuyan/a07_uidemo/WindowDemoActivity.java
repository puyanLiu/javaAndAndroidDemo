package com.example.liupuyan.a07_uidemo;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/12/18.
 *
 * 简单悬浮框的实现
 *
 * 当处于手机的普通界面，即桌面的时候，这玩意才显示，而当我们启动其他App时，这个悬浮框应该 消失不见,当我们推出app又回到桌面,这个悬浮框又要重新出现
 */
public class WindowDemoActivity extends AppCompatActivity {

    private Button btn_on;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_window);

        btn_on = (Button) findViewById(R.id.btn_on);
        btn_on.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                permission();
            }
        });
    }

    public void permission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (!Settings.canDrawOverlays(this)) {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION);
                startActivity(intent);
                return;
            } else {
                // Android 6.0以上
                Intent intent = new Intent(WindowDemoActivity.this, WindowService.class);
                intent.putExtra(WindowService.OPERATION, WindowService.OPERATION_SHOW);
                startService(intent);

                Toast.makeText(WindowDemoActivity.this, "悬浮框已开启~", Toast.LENGTH_SHORT).show();
            }
        } else {
            // Android 6.0以下
            Intent intent = new Intent(WindowDemoActivity.this, WindowService.class);
            intent.putExtra(WindowService.OPERATION, WindowService.OPERATION_SHOW);
            startService(intent);

            Toast.makeText(WindowDemoActivity.this, "悬浮框已开启~", Toast.LENGTH_SHORT).show();
        }
    }
}