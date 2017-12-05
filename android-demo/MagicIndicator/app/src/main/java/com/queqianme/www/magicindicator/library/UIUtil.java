package com.queqianme.www.magicindicator.library;

import android.content.Context;

/**
 * Created by liupuyan on 2017/11/20.
 */

public final class UIUtil {
    public static int dip2px(Context context, double dpValue) {
        float density = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * density + 0.5);
    }

    /**
     * 将pixel转换成dip(dp)
     * @param context
     * @param px
     * @return
     */
    public static int px2Dp(Context context, float px) {
        float density = context.getResources().getDisplayMetrics().density;
        return (int) (px / density + 0.5f);
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }
}
