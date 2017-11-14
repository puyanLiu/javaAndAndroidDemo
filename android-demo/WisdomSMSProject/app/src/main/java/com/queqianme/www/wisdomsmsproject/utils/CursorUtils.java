package com.queqianme.www.wisdomsmsproject.utils;

import android.database.Cursor;

/**
 * Created by liupuyan on 2017/11/8.
 */

public class CursorUtils {
    public static void printCursor(Cursor cursor) {
        LogUtils.i(cursor, "一共有" + cursor.getCount() + "条数据");
        while (cursor.moveToNext()) {
            // 获取字段数量
            for (int i = 0; i < cursor.getColumnCount(); i++) {
                String name = cursor.getColumnName(i);
                String value = cursor.getString(i);
                LogUtils.i(cursor, name + ":" + value);
            }
            LogUtils.i(cursor, "=============================");
        }
    }
}
