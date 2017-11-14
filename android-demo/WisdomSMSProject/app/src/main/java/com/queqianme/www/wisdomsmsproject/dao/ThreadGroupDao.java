package com.queqianme.www.wisdomsmsproject.dao;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

import com.queqianme.www.wisdomsmsproject.globle.Constant;

/**
 * Created by liupuyan on 2017/11/13.
 */

public class ThreadGroupDao {

    public static boolean hasGroup(ContentResolver resolver, int thread_id) {
        Cursor cursor = resolver.query(Constant.URI.THREAD_GROUP_QUERY, null, "thread_id = " + thread_id, null, null);
        return cursor.moveToNext();
    }

    public static int getGroupIdByThreadId(ContentResolver resolver, int thread_id) {
        Cursor cursor = resolver.query(Constant.URI.THREAD_GROUP_QUERY, new String[]{"group_id"}, "thread_id = " + thread_id, null, null);
        cursor.moveToFirst();
        int group_id = cursor.getInt(0);
        return group_id;
    }

    public static boolean insertThreadGroup(ContentResolver resolver, int thread_id, int group_id) {
        ContentValues values = new ContentValues();
        values.put("thread_id", thread_id);
        values.put("group_id", group_id);
        Uri uri = resolver.insert(Constant.URI.THREAD_GROUP_INSERT, values);
        if (uri != null) {
            // 插入会话后，改变群组的会话数量
            int thread_count = GroupDao.getThreadCount(resolver, group_id);
            GroupDao.updateThreadCount(resolver, group_id, thread_count + 1);
        }
        return uri != null;
    }

    public static boolean deleteThreadGroup(ContentResolver resolver, int thread_id, int group_id) {
        int number = resolver.delete(Constant.URI.THREAD_GROUP_DELETE, "thread_id = " + thread_id, null);

        if (number > 0) {
            int thread_count = GroupDao.getThreadCount(resolver, group_id);
            GroupDao.updateThreadCount(resolver, group_id, thread_count - 1);
        }

        return number > 0;
    }
}
