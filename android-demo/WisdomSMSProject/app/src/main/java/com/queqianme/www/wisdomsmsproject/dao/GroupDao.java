package com.queqianme.www.wisdomsmsproject.dao;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;

import com.queqianme.www.wisdomsmsproject.globle.Constant;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class GroupDao {

    /**
     * 添加新的群组
     * @param resolver
     * @param groupName
     */
    public static void insertGroup(ContentResolver resolver, String groupName) {
        ContentValues values = new ContentValues();
        values.put("name", groupName);
        values.put("thread_count", 0);
        values.put("create_date", System.currentTimeMillis());
        // 符合内容提供者给出的路径匹配规则，就可以将想要插入的数据插入到group表中
        resolver.insert(Constant.URI.GROUPS_INSERT, values);
    }

    public static void updateGroup(ContentResolver resolver, String groupName, int _id) {
        ContentValues values = new ContentValues();
        values.put("name", groupName);
        resolver.update(Constant.URI.GROUPS_UPDATE, values, "_id = " + _id, null);
    }

    public static void deleteGroup(ContentResolver resolver, int _id) {
        resolver.delete(Constant.URI.GROUPS_DELETE, "_id = " + _id, null);
        resolver.delete(Constant.URI.THREAD_GROUP_DELETE, "group_id = " + _id, null);
    }

    public static String getGroupNameByGroupId(ContentResolver resolver, int _id) {
        String name = null;
        Cursor cursor = resolver.query(Constant.URI.GROUPS_QUERY, new String[]{"name"}, "_id = " + _id, null, null);
        if (cursor.moveToFirst()) {
            name = cursor.getString(0);
        }
        return name;
    }

    public static int getThreadCount(ContentResolver resolver, int _id) {
        int threadCount = -1;
        Cursor cursor = resolver.query(Constant.URI.GROUPS_QUERY, new String[] {"thread_count"}, "_id = " + _id, null, null );
        if (cursor.moveToNext()) {
            threadCount = cursor.getInt(0);
        }
        return threadCount;
    }

    public static void updateThreadCount(ContentResolver resolver, int _id, int thread_count) {
        ContentValues values = new ContentValues();
        values.put("thread_count", thread_count);
        resolver.update(Constant.URI.GROUPS_UPDATE, values, "_id = " + _id, null);
    }
}
