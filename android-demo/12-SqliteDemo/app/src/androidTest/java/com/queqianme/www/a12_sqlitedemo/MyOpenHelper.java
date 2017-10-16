package com.queqianme.www.a12_sqlitedemo;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by liupuyan on 2017/10/13.
 */

public class MyOpenHelper extends SQLiteOpenHelper {

    public MyOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        // (上下文，数据库名字，游标工厂（游标等同于结果集，传null使用默认工厂），版本（不能小于1，用于升级）)
        super(context, name, factory, version);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("create table person(_id integer primary key autoincrement, name char(10), phone char(20), salary integer(10))");
        System.out.println("创建数据库时调用");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {
        System.out.println("数据库升级时调用");
    }
}
