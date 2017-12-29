package com.queqianme.www.statusbardemoproject;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.WindowManager;

import com.readystatesoftware.systembartint.SystemBarTintManager;

/**
 * Created by liupuyan on 2017/12/28.
 *
 * 第三方库systembartint实现
 */
public class OtherActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_other);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            //透明状态栏
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            //透明导航栏
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);

            SystemBarTintManager tintManager = new SystemBarTintManager(this);
            // 激活状态栏
            tintManager.setStatusBarTintEnabled(true);
            // 激活导航栏
            tintManager.setNavigationBarTintEnabled(true);
            // 设置系统栏设置颜色 统一设置状态栏跟导航栏的颜色
//            tintManager.setTintColor(Color.BLUE);
            // 给状态栏设置颜色
            tintManager.setStatusBarTintColor(Color.RED);
            // 给导航栏设置颜色
            tintManager.setNavigationBarTintColor(Color.YELLOW);
        }
    }
}