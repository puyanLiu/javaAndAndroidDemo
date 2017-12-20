package com.example.liupuyan.a07_uidemo;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.PixelFormat;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/12/18.
 *
 * 在后台等待我们的操作，比如完成悬浮框的绘制移除等
 */

public class WindowService extends Service {

    public static final int HANDLE_CHECK_ACTIVITY = 200;
    public static final String OPERATION = "operation";
    public static final int OPERATION_SHOW = 100;
    public static final int OPERATION_HIDE = 101;
    private boolean isAdded = false; // 是否已增加悬浮窗
    private Button btnView;
    private static WindowManager windowManager;
    private static WindowManager.LayoutParams wmParams;
    private ActivityManager activityManager;
    private List<String> homeList; // 桌面应用程序包名列表

    /**
     * 每隔一段时间进行一系列判断
     * 比如：是否在桌面，是否已加载悬浮框， 否则加载；否则，如果加载了,就将这个悬浮框移除
     *
     * 定义一个更新界面的Handle
     */
    private Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case HANDLE_CHECK_ACTIVITY:
                    if (isHome()) {
                        // 在桌面 未添加
                        if (!isAdded) {
                            windowManager.addView(btnView, wmParams);
                            isAdded = true;
                            new Thread(new Runnable() {
                                @Override
                                public void run() {
                                    for (int i = 0; i < 10; i++) {
                                        try {
                                            Thread.sleep(1000);
                                        } catch (InterruptedException e) {
                                            e.printStackTrace();
                                        }
                                        Message m = new Message();
                                        m.what = 2;
                                        handler.sendMessage(m);
                                    }
                                }
                            });
                        }
                    } else {
                        // 不在桌面，已添加
                        if (isAdded) {
                            windowManager.removeView(btnView);
                            isAdded = false;
                        }
                    }

                    handler.sendEmptyMessageDelayed(HANDLE_CHECK_ACTIVITY, 0);
                    break;
            }
        }
    };

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    /**
     * 取出intent中的数据，判断是否需要添加悬浮框，还是移除悬浮框
     * @param intent
     * @param flags
     * @param startId
     * @return
     */
    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        int operation = intent.getIntExtra(OPERATION, OPERATION_SHOW);
        switch (operation) {
            case OPERATION_SHOW:
                handler.removeMessages(HANDLE_CHECK_ACTIVITY);
                handler.sendEmptyMessage(HANDLE_CHECK_ACTIVITY);
                break;
            case OPERATION_HIDE:
                handler.removeMessages(HANDLE_CHECK_ACTIVITY);
                break;
        }
        return super.onStartCommand(intent, flags, startId);
    }

    /**
     * 定义一个创建悬浮框的方法
     */
    private void createWindowView() {
        btnView = new Button(getApplicationContext());
        btnView.setBackgroundResource(R.mipmap.ic_launcher);
        windowManager = (WindowManager)getApplicationContext().getSystemService(Context.WINDOW_SERVICE);
        wmParams = new WindowManager.LayoutParams();

        // 设置window type
        wmParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        // 设置悬浮框不可触摸
        wmParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
        // 悬浮窗不可触摸，不接收任何事件，同时不影响后面的事件响应
        wmParams.format = PixelFormat.RGBA_8888;
        // 设置悬浮框的宽高
        wmParams.width = 200;
        wmParams.height = 200;
        wmParams.gravity = Gravity.LEFT;
        wmParams.x = 200;
        wmParams.y = 200;
        // 设置悬浮框的Touch监听
        btnView.setOnTouchListener(new View.OnTouchListener() {

            // 保存悬浮框最后位置的变量
            int lastX, lastY;
            int paramX, paramY;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        lastX = (int)event.getRawX();
                        lastY = (int)event.getRawY();
                        paramX = wmParams.x;
                        paramY = wmParams.y;
                        break;
                    case MotionEvent.ACTION_MOVE:
                        int dx = (int)event.getRawX() - lastX;
                        int dy = (int)event.getRawY() - lastY;
                        wmParams.x = paramX + dx;
                        wmParams.y = paramY + dy;
                        // 更新悬浮窗位置
                        windowManager.updateViewLayout(btnView, wmParams);
                        break;
                }
                return true;
            }
        });

        windowManager.addView(btnView, wmParams);
        isAdded = true;
    }

    @Override
    public void onCreate() {
        super.onCreate();

        homeList = getHomes();

        // 启动加载悬浮框
        createWindowView();
    }

    /**
     * 判断当前界面是否桌面
     * @return
     */
    public boolean isHome() {
        if (activityManager == null) {
            activityManager = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
        }
        List<ActivityManager.RunningTaskInfo> rti = activityManager.getRunningTasks(1);
//        List<ActivityManager.RunningTaskInfo> rti = activityManager.getRunningAppProcesses();
//        getLauncherPackageName(this);

        System.out.println("--------------------------" + rti.get(0).topActivity.getPackageName());

        return homeList.contains(rti.get(0).topActivity.getPackageName());
    }

    /**
     * 获得属于桌面的应用的应用包名称
     * @return 返回包含所有包名的字符串列表
     */
    private List<String> getHomes() {
        List<String> names = new ArrayList<>();
        PackageManager packageManager = this.getPackageManager();
        // 属性
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
//        List<ResolveInfo> resolveInfos = packageManager.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY);
//        for (ResolveInfo ri: resolveInfos) {
//            names.add(ri.activityInfo.packageName);
//            System.out.println("属于桌面的应用-------------------------" + ri.activityInfo.packageName);
//        }


        List<ResolveInfo> packageInfos = getPackageManager().queryIntentActivities(intent, 0);

        for (int i = 0; i < packageInfos.size(); i++) {
            String launcherActivityName = packageInfos.get(i).activityInfo.name;
            String packageName = packageInfos.get(i).activityInfo.packageName;
            names.add(packageName);
            Log.i("appappinfo", i + " 属于桌面的应用------------------------- launcherActivityName: " + launcherActivityName);
            Log.e("appappinfo", i + " 属于桌面的应用------------------------- packageName: " + packageName);
        }

        return names;
    }

    /**
     * 获取正在运行桌面包名（注：存在多个桌面时且未指定默认桌面时，该方法返回Null,使用时需处理这个情况）
     */
    public static String getLauncherPackageName(Context context) {
        final Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
        final ResolveInfo res = context.getPackageManager().resolveActivity(intent, 0);
        if (res.activityInfo == null) {
            // should not happen. A home is always installed, isn't it?
            return null;
        }
        if (res.activityInfo.packageName.equals("android")) {
            // 有多个桌面程序存在，且未指定默认项时；
            return null;
        } else {
            System.out.println("正在运行桌面包名----------------------------" + res.activityInfo.packageName);
            return res.activityInfo.packageName;
        }
    }
}
