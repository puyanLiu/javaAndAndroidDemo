package com.queqianme.www.wisdomsmsproject.bean;

import android.database.Cursor;

/**
 * Created by liupuyan on 2017/11/8.
 */

public class ConversationModel {
    private String snippet;
    private int thread_id;
    private int msg_count;
    private String address;
    private long date;

    public static ConversationModel createFromCursor(Cursor cursor) {
        ConversationModel model = new ConversationModel();
        model.setSnippet(cursor.getString(cursor.getColumnIndex("snippet")));
        model.setThread_id(cursor.getInt(cursor.getColumnIndex("thread_id")));
        model.setMsg_count(cursor.getInt(cursor.getColumnIndex("msg_count")));
        model.setAddress(cursor.getString(cursor.getColumnIndex("address")));
        model.setDate(cursor.getLong(cursor.getColumnIndex("date")));
        return model;
    }

    public String getSnippet() {
        return snippet;
    }

    public void setSnippet(String snippet) {
        this.snippet = snippet;
    }

    public int getThread_id() {
        return thread_id;
    }

    public void setThread_id(int thread_id) {
        this.thread_id = thread_id;
    }

    public int getMsg_count() {
        return msg_count;
    }

    public void setMsg_count(int msg_count) {
        this.msg_count = msg_count;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "ConversationModel{" +
                "snippet='" + snippet + '\'' +
                ", thread_id=" + thread_id +
                ", msg_count=" + msg_count +
                ", address='" + address + '\'' +
                ", date=" + date +
                '}';
    }
}
