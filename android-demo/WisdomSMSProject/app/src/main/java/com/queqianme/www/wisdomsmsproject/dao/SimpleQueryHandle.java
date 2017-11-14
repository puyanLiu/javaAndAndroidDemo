package com.queqianme.www.wisdomsmsproject.dao;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;

import com.queqianme.www.wisdomsmsproject.utils.CursorUtils;

/**
 * Created by liupuyan on 2017/11/8.
 * 异步查询
 */

public class SimpleQueryHandle extends AsyncQueryHandler {
    public SimpleQueryHandle(ContentResolver cr) {
        super(cr);
    }

    /**
     * 查询完毕调用
     * @param token 查询开始时携带的数据
     * @param cookie 查询开始时携带的数据
     * @param cursor 查询结果
     */
    @Override
    protected void onQueryComplete(int token, Object cookie, Cursor cursor) {
        super.onQueryComplete(token, cookie, cursor);
        if (cursor == null) {
            return;
        }
        CursorUtils.printCursor(cursor);

        if (cookie != null && cookie instanceof CursorAdapter) {
            // 查询得到的cursor，交给CursorAdapter，由CursorAdapter的内容显示至listView
            ((CursorAdapter)cookie).changeCursor(cursor);
        }
    }
}
