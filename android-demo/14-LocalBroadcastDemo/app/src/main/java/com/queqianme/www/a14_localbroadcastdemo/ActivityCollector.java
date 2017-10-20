package com.queqianme.www.a14_localbroadcastdemo;

import android.app.Activity;

import java.util.ArrayList;
import java.util.List;

/**
 * 关闭所有的Activity
 * Created by liupuyan on 2017/10/19.
 */

public class ActivityCollector {
    private static List<Activity> activities = new ArrayList<>();

    public static void addActivity(Activity activity) {
        activities.add(activity);
    }

    public static void removeActivity(Activity activity) {
        activities.remove(activity);
    }

    public static void finishAll() {
        for (Activity activity: activities) {
            if (!activity.isFinishing()) {
                activity.finish();
            }
        }
    }
}
