package com.queqianme.www.wisdomsmsproject.bean;

import android.database.Cursor;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class SmsModel {
    private int _id;
    private int type;
    private long date;
    private String body;

    public static SmsModel createFromCursor(Cursor cursor) {
        SmsModel model = new SmsModel();
        model.set_id(cursor.getInt(cursor.getColumnIndex("_id")));
        model.setType(cursor.getInt(cursor.getColumnIndex("type")));
        model.setDate(cursor.getLong(cursor.getColumnIndex("date")));
        model.setBody(cursor.getString(cursor.getColumnIndex("body")));
        return model;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
