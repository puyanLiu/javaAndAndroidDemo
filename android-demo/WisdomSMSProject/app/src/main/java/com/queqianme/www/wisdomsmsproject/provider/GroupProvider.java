package com.queqianme.www.wisdomsmsproject.provider;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.queqianme.www.wisdomsmsproject.dao.GroupOpenHelper;
import com.queqianme.www.wisdomsmsproject.utils.LogUtils;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class GroupProvider extends ContentProvider {

    private GroupOpenHelper helper;
    private SQLiteDatabase db;

    private static final String TABLE_GROUPS = "groups";
    private static final String TABLE_THREAD_GROUPS = "thread_group";

    private static final String authority = "com.queqianme.www.sms";
    public static final Uri BASE_URI = Uri.parse("content://" + authority);

    static final int CODE_GROUPS_INSERT = 0;
    static final int CODE_GROUPS_QUERY = 1;
    static final int CODE_GROUPS_UPDATE = 2;
    static final int CODE_GROUPS_DELETE = 3;
    static final int CODE_THREAD_GROUP_INSERT = 4;
    static final int CODE_THREAD_GROUP_QUERY = 5;
    static final int CODE_THREAD_GROUP_UPDATE = 6;
    static final int CODE_THREAD_GROUP_DELETE = 7;

    UriMatcher matcher = new UriMatcher(UriMatcher.NO_MATCH);
    {
        // 添加匹配规则
        matcher.addURI(authority, "groups/insert", CODE_GROUPS_INSERT);
        matcher.addURI(authority, "groups/query", CODE_GROUPS_QUERY);
        matcher.addURI(authority, "groups/update", CODE_GROUPS_UPDATE);
        matcher.addURI(authority, "groups/delete", CODE_GROUPS_DELETE);
        matcher.addURI(authority, "thread_group/insert", CODE_THREAD_GROUP_INSERT);
        matcher.addURI(authority, "thread_group/query", CODE_THREAD_GROUP_QUERY);
        matcher.addURI(authority, "thread_group/update", CODE_THREAD_GROUP_UPDATE);
        matcher.addURI(authority, "thread_group/delete", CODE_THREAD_GROUP_DELETE);
    }

    @Override
    public boolean onCreate() {
        helper = GroupOpenHelper.getInstance(getContext());
        db = helper.getWritableDatabase();
        return false;
    }

    private void notifyChange(Uri uri) {
        ContentResolver resolver = getContext().getContentResolver();
        resolver.notifyChange(uri, null);
    }

    @Nullable
    @Override
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable
            String sortOrder) {
        switch (matcher.match(uri)) {
            case CODE_GROUPS_QUERY:
                Cursor cursor = db.query(TABLE_GROUPS, projection, selection, selectionArgs, null, null, sortOrder);

                // 监视uri上数据改变
                // 只要该uri上的数据改变，内容观察者就会立刻发现，重新查询
                cursor.setNotificationUri(getContext().getContentResolver(), BASE_URI);

                return cursor;
            case CODE_THREAD_GROUP_QUERY:
                cursor = db.query(TABLE_THREAD_GROUPS, projection, selection, selectionArgs, null, null, sortOrder);

                // 监视uri上数据改变
                // 只要该uri上的数据改变，内容观察者就会立刻发现，重新查询
                cursor.setNotificationUri(getContext().getContentResolver(), BASE_URI);

                return cursor;
            default:
                throw new IllegalArgumentException("未识别的uri:" + uri);
        }
    }

    @Nullable
    @Override
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Nullable
    @Override
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues values) {
        switch (matcher.match(uri)) {
            case CODE_GROUPS_INSERT:
                long rawId = db.insert(TABLE_GROUPS, null, values);
                if (rawId == -1) {
                    return null;
                } else {
                    LogUtils.i(getContext(), "插入成功");
                    // 自己创建的数据库只能调用notifichange方法 刷新
                    notifyChange(BASE_URI);
                    return ContentUris.withAppendedId(uri, rawId);
                }
            case CODE_THREAD_GROUP_INSERT:
                rawId = db.insert(TABLE_THREAD_GROUPS, null, values);
                if (rawId == -1) {
                    return null;
                } else {
                    LogUtils.i(getContext(), "插入成功");
                    // 自己创建的数据库只能调用notifichange方法 刷新
                    notifyChange(BASE_URI);
                    return ContentUris.withAppendedId(uri, rawId);
                }
            default:
                throw new IllegalArgumentException("未识别的uri:" + uri);
        }
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        switch (matcher.match(uri)) {
            case CODE_GROUPS_DELETE:
                int number = db.delete(TABLE_GROUPS, selection, selectionArgs);
                LogUtils.i(getContext(), "删除成功");
                // 自己创建的数据库只能调用notifichange方法 刷新
                notifyChange(BASE_URI);
                return number;
            case CODE_THREAD_GROUP_DELETE:
                number = db.delete(TABLE_THREAD_GROUPS, selection, selectionArgs);
                LogUtils.i(getContext(), "删除成功");
                // 自己创建的数据库只能调用notifichange方法 刷新
                notifyChange(BASE_URI);
                return number;
            default:
                throw new IllegalArgumentException("未识别的uri:" + uri);
        }
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        switch (matcher.match(uri)) {
            case CODE_GROUPS_UPDATE:
                int number = db.update(TABLE_GROUPS, values, selection, selectionArgs);
                LogUtils.i(getContext(), "更新成功");
                // 自己创建的数据库只能调用notifichange方法 刷新
                notifyChange(BASE_URI);
                return number;
            default:
                throw new IllegalArgumentException("未识别的uri:" + uri);
        }
    }
}
