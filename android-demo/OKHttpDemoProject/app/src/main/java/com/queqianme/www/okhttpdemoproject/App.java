package com.queqianme.www.okhttpdemoproject;

import android.app.Application;
import android.content.Context;
import android.util.DisplayMetrics;

import cn.finalteam.okhttpfinal.OkHttpFinal;
import cn.finalteam.okhttpfinal.OkHttpFinalConfiguration;

/**
 * Created by liupuyan on 2017/12/21.
 */

public class App extends Application {
    private static App instance;
    public static App getInstance() {
        return instance;
    }
    // 屏幕宽度 高度 像素
    public static int W, H;

    @Override
    public void onCreate() {
        super.onCreate();

        instance = this;
        
        init();
        getScreen(this);
    }

    private void init() {
        initOkhttpFinal();
    }

    private void initOkhttpFinal() {
        OkHttpFinalConfiguration.Builder builder = new OkHttpFinalConfiguration.Builder();
        OkHttpFinal.getInstance().init(builder.build());
    }

    public void getScreen(Context context) {
        DisplayMetrics metric = context.getResources().getDisplayMetrics();
        H = metric.heightPixels;
        W = metric.widthPixels;
    }
}
