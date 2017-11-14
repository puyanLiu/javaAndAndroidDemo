package com.queqianme.www.wisdomsmsproject.utils;

import android.util.Log;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class LogUtils {

    private static boolean isDebug = true;

    public static int i(String tag, String msg) {
        if (isDebug) {
            return Log.i(tag, msg);
        }
        return -1;
    }

    public static int i(Object tag, String msg) {
        if (isDebug) {
            return Log.i(tag.getClass().getSimpleName(), msg);
        }
        return -1;
    }

    public static int w(String tag, String msg) {
        if (isDebug) {
            return Log.w(tag, msg);
        }
        return -1;
    }

    public static int e(String tag, String msg) {
        if (isDebug) {
            return Log.e(tag, msg);
        }
        return -1;
    }

    public static int v(String tag, String msg) {
        if (isDebug) {
            return Log.v(tag, msg);
        }
        return -1;
    }

    public static int d(String tag, String msg) {
        if (isDebug) {
            return Log.d(tag, msg);
        }
        return -1;
    }
}
