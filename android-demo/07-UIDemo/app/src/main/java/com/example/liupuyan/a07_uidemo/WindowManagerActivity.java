package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/12/18.
 *
 * WindowManager(窗口管理服务)
 * 显示View的最底层，Toast，Activity，Dialog的底层都用到了这个WindowManager，属于全局的
 *
 */
public class WindowManagerActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_window_manager);

        Toast.makeText(this, "当前手机的屏幕宽高：" + getScreenW(this) + "*" + getScreenH(this), Toast.LENGTH_SHORT).show();

        // 设置窗口全屏显示
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        getSupportActionBar().hide();
    }

    /**
     * 保持屏幕常亮
     * @param activity
     * @param keepScreenOn
     */
    public void setKeepScreenOn(Activity activity, boolean keepScreenOn) {
        if (keepScreenOn) {
            activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        } else {
            activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        }
    }

    /**
     * 获取屏幕宽高 4.2以后过时
     * @param context
     * @return
     */
    private static int[] getScreenHW(Context context) {
        WindowManager manager = (WindowManager) context.getSystemService(WINDOW_SERVICE);
        Display display = manager.getDefaultDisplay();
        int width = display.getWidth();
        int height = display.getHeight();
        int[] HW = new int[] { width, height };
        return HW;
    }

    /**
     * 获得屏幕宽高
     * @param context
     * @return
     */
    private static int[] getScreenHW2(Context context) {
        WindowManager manager = (WindowManager) context.getSystemService(WINDOW_SERVICE);
        DisplayMetrics dm = new DisplayMetrics();
        manager.getDefaultDisplay().getMetrics(dm);
        int width = dm.widthPixels;
        int height = dm.heightPixels;
        int[] HW = new int[] { width, height };
        return HW;
    }

    // 获取屏幕宽
    private static int getScreenW(Context context) {
        return getScreenHW2(context)[0];
    }

    // 获取屏幕高
    private static int getScreenH(Context context) {
        return getScreenHW2(context)[1];
    }

    private void windowDemo() {
        // 获得WindowManager对象
        WindowManager windowManager = (WindowManager) getApplicationContext().getSystemService(WINDOW_SERVICE);
        // 获得WindowManager.LayoutParams对象
        WindowManager.LayoutParams wmParams = new WindowManager.LayoutParams();
    }
}