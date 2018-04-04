package com.queqianme.www.toolbardemoproject;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;

import java.lang.ref.WeakReference;

/**
 * Created by liupuyan on 2017/11/17.
 */

public class App extends Application {

    private static App instance;
    private static Context context;

    // 为避免内存泄漏使用弱引用
    private WeakReference<Activity> mCurrentActivity;
    // 屏幕宽度 高度 像素
    public static int W, H;
    // 屏幕密度
    public static float density;
    // 屏幕密度Dpi
    public static int densityDpi;


    @Override
    public void onCreate() {
        super.onCreate();

        context = getApplicationContext();
        getScreen(this);
        initActivityLifecycleListener();
    }

    private void initActivityLifecycleListener() {

        // 用来监听所有Activity的生命周期回调
        registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacks() {
            @Override
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {

            }

            @Override
            public void onActivityStarted(Activity activity) {

            }

            @Override
            public void onActivityResumed(Activity activity) {
                mCurrentActivity = new WeakReference<Activity>(activity);
            }

            @Override
            public void onActivityPaused(Activity activity) {

            }

            @Override
            public void onActivityStopped(Activity activity) {

            }

            @Override
            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {

            }

            @Override
            public void onActivityDestroyed(Activity activity) {

            }
        });
    }

    public WeakReference<Activity> getCurrentActivity() {
        return mCurrentActivity;
    }

    public void getScreen(Context context) {
        DisplayMetrics metric = context.getResources().getDisplayMetrics();
        H = metric.heightPixels;
        W = metric.widthPixels;
        density = metric.density;
        densityDpi = metric.densityDpi;
    }

    public static App getInstance() {
        if (instance == null) {
            // 线程安全
            synchronized (App.class) {
                if (instance == null) {
                    instance = new App();
                }
            }
        }
        return instance;
    }

    public static Context getContext() {
        return context;
    }
}
