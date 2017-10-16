package com.queqianme.www.a12_sqlitedemo;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/10/16.
 */

public class TextViewActivity extends Activity {

    private MyOpenHelper1 oh;
    private SQLiteDatabase db;
    private LinearLayout ll_list;
    private List<PersonModel> p_list;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_textview);

        oh = new MyOpenHelper1(TextViewActivity.this, "people.db", null, 1);
        db = oh.getReadableDatabase();
        p_list = new ArrayList<>();

        ll_list = (LinearLayout)findViewById(R.id.ll_list);

        Cursor cursor = db.query("person", null, null, null, null, null, null);
        while (cursor.moveToNext()) {
            String name = cursor.getString(cursor.getColumnIndex("name"));
            String phone = cursor.getString(cursor.getColumnIndex("phone"));
            int salary = cursor.getShort(cursor.getColumnIndex("salary"));

            System.out.println(name + ";" + phone + ";" + salary);
            PersonModel p = new PersonModel(name, phone, salary);
            p_list.add(p);
        }

        for (PersonModel p: p_list) {
            TextView tv = new TextView(TextViewActivity.this);
            tv.setText(p.toString());
            ll_list.addView(tv);
        }
    }
}
