package com.queqianme.www.mobilesafeproject.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class PackageUtils {

    // 版本名称
    public static String getVersionName(Context context) {
        PackageManager pm = context.getPackageManager(); // 包管理器
        try {
            PackageInfo packInfo = pm.getPackageInfo(context.getPackageName(), 0); // 根据包名 获取相关信息
            String versionName = packInfo.versionName;
            return versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return "";
    }

    // 版本号
    public static int getVersionCode(Context context) {
        PackageManager pm = context.getPackageManager(); // 包管理器
        try {
            PackageInfo packInfo = pm.getPackageInfo(context.getPackageName(), 0); // 根据包名 获取相关信息
            int versionCode = packInfo.versionCode;
            LogUtils.i("A", "-----------------------" + versionCode);
            return versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return -1;
    }
}
