package com.queqianme.www.mobilesafeproject.utils;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * SharePreference封装
 */

public class SharedPreferencesUtils {
    public static void putBoolean(Context ctx, String key, Boolean value) {
        SharedPreferences sp = ctx.getSharedPreferences("config", Context.MODE_PRIVATE);
        sp.edit().putBoolean(key, value).commit();
    }

    public static Boolean getBoolean(Context ctx, String key, Boolean defValue) {
        SharedPreferences sp = ctx.getSharedPreferences("config", Context.MODE_PRIVATE);
        return sp.getBoolean(key, defValue);
    }

    public static void putString(Context ctx, String key, String value) {
        SharedPreferences sp = ctx.getSharedPreferences("config", Context.MODE_PRIVATE);
        sp.edit().putString(key, value).commit();
    }

    public static String getString(Context ctx, String key, String defValue) {
        SharedPreferences sp = ctx.getSharedPreferences("config", Context.MODE_PRIVATE);
        return sp.getString(key, defValue);
    }

    public static void putInt(Context ctx, String key, int value) {
        SharedPreferences sp = ctx.getSharedPreferences("config", Context.MODE_PRIVATE);
        sp.edit().putInt(key, value).commit();
    }

    public static int getInt(Context ctx, String key, int defValue) {
        SharedPreferences sp = ctx.getSharedPreferences("config", Context.MODE_PRIVATE);
        return sp.getInt(key, defValue);
    }
}
