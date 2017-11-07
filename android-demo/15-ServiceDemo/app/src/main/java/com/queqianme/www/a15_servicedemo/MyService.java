package com.queqianme.www.a15_servicedemo;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/31.
 */

public class MyService extends Service {
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        Toast.makeText(this, "bind", Toast.LENGTH_SHORT).show();
        System.out.println("bind");
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Toast.makeText(this, "start", Toast.LENGTH_SHORT).show();
        System.out.println("start");
        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public void onCreate() {
        super.onCreate();

        Toast.makeText(this, "create", Toast.LENGTH_SHORT).show();
        System.out.println("create");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();

        Toast.makeText(this, "destory", Toast.LENGTH_SHORT).show();
        System.out.println("destory");
    }
}
