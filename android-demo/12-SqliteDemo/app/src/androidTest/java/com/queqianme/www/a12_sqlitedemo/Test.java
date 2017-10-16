package com.queqianme.www.a12_sqlitedemo;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import static android.support.test.InstrumentationRegistry.getTargetContext;

/**
 * Created by liupuyan on 2017/10/13.
 */

public class Test {

    private MyOpenHelper oh;
    private SQLiteDatabase db;

    public Test() {
        oh = new MyOpenHelper(getTargetContext(), "people.db", null, 1);
        db = oh.getReadableDatabase();
    }

    @org.junit.Test
    public void insert() throws Exception {
        db.execSQL("insert into person(name, phone, salary) values(?, ?, ?)", new Object[]{"张三", "13430266001", 12000});
        db.execSQL("insert into person(name, phone, salary) values(?, ?, ?)", new Object[]{"李四", "13430266002", 13000});
        db.execSQL("insert into person(name, phone, salary) values(?, ?, ?)", new Object[]{"王五", "13430266003", 14000});

        db.close();
    }

    @org.junit.Test
    public void delete() throws Exception {
        db.execSQL("delete from person where name = ?", new Object[]{"李四"});

        db.close();
    }

    @org.junit.Test
    public void update() throws Exception {
        db.execSQL("update person set salary = ? where name = ?", new Object[]{300000, "王五"});

        db.close();
    }

    @org.junit.Test
    public void select() throws Exception {
        Cursor cursor = db.rawQuery("select * from person", null);
        // 指针移到下一行
        while (cursor.moveToNext()) {
            String name = cursor.getString(cursor.getColumnIndex("name"));
            String phone = cursor.getString(cursor.getColumnIndex("phone"));
            int salary = cursor.getShort(cursor.getColumnIndex("salary"));
            System.out.println(name + ";" + phone + ";" + salary);
        }
    }

    // 通过api插入
    @org.junit.Test
    public void insertApi() throws Exception {
        ContentValues values = new ContentValues();
        values.put("name", "王八");
        values.put("phone", "122312334");
        values.put("salary", "5000");
        // -1 插入失败
        long l = db.insert("person", null, values);
        System.out.println("-----------------------" + l);
    }

    @org.junit.Test
    public void deleteApi() throws Exception {
        long l = db.delete("person", "_id = ?", new String[]{"8"});
        System.out.println("-----------------------" + l);
    }

    @org.junit.Test
    public void updateApi() throws Exception {
        ContentValues values = new ContentValues();
        values.put("name", "哈哈");
        long l = db.update("person", values, "_id = ?", new String[]{"10"});
        System.out.println("-----------------------" + l);
    }

    @org.junit.Test
    public void selectApi() throws Exception {
        Cursor cursor = db.query("person", null, null, null, null, null, null);
        while (cursor.moveToNext()) {
            String name = cursor.getString(cursor.getColumnIndex("name"));
            String phone = cursor.getString(cursor.getColumnIndex("phone"));
            int salary = cursor.getShort(cursor.getColumnIndex("salary"));
            System.out.println(name + ";" + phone + ";" + salary);
        }
    }

    @org.junit.Test
    public void transaction() throws Exception {
        try {
            // 开启事务
            db.beginTransaction();
            ContentValues values = new ContentValues();
            values.put("salary", 12343);
            db.update("person", values, "_id = ?", new String[]{"2"});

            // 清空values内容
            values.clear();
            values.put("salary", 30001);
            db.update("person", values, "_id = ?", new String[]{"5"});

//            int i = 9 / 0;
            // 设置事务执行成功，提交时如果这行代码未执行，就会回滚
            db.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭事物 提交数据
            db.endTransaction();
        }
    }

    @org.junit.Test
    public void addData() throws Exception {
        for (int i = 0; i < 50; i++) {
            ContentValues values = new ContentValues();
            values.put("name", "张三" + i);
            values.put("phone", "122" + i);
            values.put("salary", "5000" + i * 10);
            // -1 插入失败
            long l = db.insert("person", null, values);
            System.out.println("-----------------------" + l);
        }
    }
}
