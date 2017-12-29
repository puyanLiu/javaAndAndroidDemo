package com.queqianme.www.okhttpdemoproject;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by liupuyan on 2017/12/22.
 *
 * 统一管理Activity类
 */

public abstract class BaseActivity extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 将Activity实例添加到ActivityManager的堆栈
        ActivityManager.getActivityManager().addActivity(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        // 将Activity实例从ActivityManager的堆栈中移除
        ActivityManager.getActivityManager().finishActivity(this);
    }
}
