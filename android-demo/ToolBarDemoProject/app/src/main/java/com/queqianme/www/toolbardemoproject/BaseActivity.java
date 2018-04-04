package com.queqianme.www.toolbardemoproject;

import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/**
 * Created by liupuyan on 2018/1/3.
 *
 * 去掉系统的导航栏
 * 继承AppCompatActivity
 *  supportRequestWindowFeature(Window.FEATURE_NO_TITLE)
 *
 * 继承Activity
 *  requestWindowFeature(Window.FEATURE_NO_TITLE)
 */
public abstract class BaseActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 去掉系统自带导航栏
        supportRequestWindowFeature(Window.FEATURE_NO_TITLE);

        setContentView(getContentLayoutId());

        ViewGroup contentFrameLayout = findViewById(Window.ID_ANDROID_CONTENT);
        View parentView = contentFrameLayout.getChildAt(0);
        if (parentView != null && Build.VERSION.SDK_INT >= 14) {
            parentView.setFitsSystemWindows(true);
        }

        initData();
    }

    /**
     * 返回资源文件Id
     * @return
     */
    public abstract int getContentLayoutId();

    /**
     * 初始化数据
     */
    public abstract void initData();
}