package com.queqianme.www.mobilesafeproject.utils;

import android.util.Log;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class LogUtils {

    private static boolean isFlag = true;

    public static int i(String tag, String msg) {
        if (isFlag) {
            Log.i(tag, msg);
        }
        return -1;
    }

    public static int w(String tag, String msg) {
        if (isFlag) {
            Log.w(tag, msg);
        }
        return -1;
    }

    public static int e(String tag, String msg) {
        if (isFlag) {
            Log.e(tag, msg);
        }
        return -1;
    }

    public static int v(String tag, String msg) {
        if (isFlag) {
            Log.v(tag, msg);
        }
        return -1;
    }

    public static int d(String tag, String msg) {
        if (isFlag) {
            Log.d(tag, msg);
        }
        return -1;
    }
}
