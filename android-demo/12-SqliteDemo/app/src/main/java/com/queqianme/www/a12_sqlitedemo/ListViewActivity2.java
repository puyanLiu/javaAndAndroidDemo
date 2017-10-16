package com.queqianme.www.a12_sqlitedemo;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/10/16.
 */

public class ListViewActivity2 extends Activity {

    private ListView lv_list;
    private MyOpenHelper1 oh;
    private SQLiteDatabase db;
    private List<PersonModel> p_list;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview2);

        oh = new MyOpenHelper1(ListViewActivity2.this, "people.db", null, 1);
        db = oh.getReadableDatabase();
        p_list = new ArrayList<>();

        lv_list = (ListView) findViewById(R.id.lv_list);

        Cursor cursor = db.query("person", null, null, null, null, null, null);
        while (cursor.moveToNext()) {
            String name = cursor.getString(cursor.getColumnIndex("name"));
            String phone = cursor.getString(cursor.getColumnIndex("phone"));
            int salary = cursor.getShort(cursor.getColumnIndex("salary"));

            System.out.println(name + ";" + phone + ";" + salary);
            PersonModel p = new PersonModel(name, phone, salary);
            p_list.add(p);
        }

        lv_list.setAdapter(new ArrayAdapter<PersonModel>(this, R.layout.item_row, R.id.txt_name , p_list));
    }
}
