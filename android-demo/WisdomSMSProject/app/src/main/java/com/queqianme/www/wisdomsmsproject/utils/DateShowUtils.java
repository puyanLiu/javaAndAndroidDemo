package com.queqianme.www.wisdomsmsproject.utils;

import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.DateUtils;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class DateShowUtils {

    public static String showDate(Context context, long date) {
        // 设置时间
        if (DateUtils.isToday(date)) {
            // 显示 时分
            return DateFormat.getTimeFormat(context).format(date);
        } else {
            // 显示年月日
            return DateFormat.getDateFormat(context).format(date);
        }
    }

}
