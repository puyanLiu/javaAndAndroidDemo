package com.queqianme.www.smartrefreshproject;

import android.app.Application;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatDelegate;

import com.queqianme.www.smartrefreshproject.util.DynamicTimeFormat;
import com.queqianme.www.refresh_layout.SmartRefreshLayout;
import com.queqianme.www.refresh_layout.api.DefaultRefreshHeaderCreater;
import com.queqianme.www.refresh_layout.api.RefreshHeader;
import com.queqianme.www.refresh_layout.api.RefreshLayout;
import com.queqianme.www.refresh_layout.constant.SpinnerStyle;
import com.queqianme.www.refresh_layout.header.ClassicsHeader;
import com.squareup.leakcanary.LeakCanary;

/**
 *
 * Created by SCWANG on 2017/6/11.
 */

public class App extends Application {

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        SmartRefreshLayout.setDefaultRefreshHeaderCreater(new DefaultRefreshHeaderCreater() {
            @NonNull
            @Override
            public RefreshHeader createRefreshHeader(Context context, RefreshLayout layout) {
                layout.setPrimaryColorsId(R.color.colorPrimary, android.R.color.white);//全局设置主题颜色
                return new ClassicsHeader(context).setTimeFormat(new DynamicTimeFormat("更新于 %s"));
            }
        });
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (LeakCanary.isInAnalyzerProcess(this)) {
            // This process is dedicated to LeakCanary for heap analysis.
            // You should not init your app in this process.
            return;
        }
        LeakCanary.install(this);
    }
}
