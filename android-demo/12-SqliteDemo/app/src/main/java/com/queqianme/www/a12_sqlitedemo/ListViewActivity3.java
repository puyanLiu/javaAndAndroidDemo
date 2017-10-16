package com.queqianme.www.a12_sqlitedemo;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liupuyan on 2017/10/16.
 */

public class ListViewActivity3 extends Activity {

    private ListView lv_list;
    private MyOpenHelper1 oh;
    private SQLiteDatabase db;
    private List<Map<String, Object>> p_list;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview2);

        oh = new MyOpenHelper1(ListViewActivity3.this, "people.db", null, 1);
        db = oh.getReadableDatabase();
        p_list = new ArrayList<>();

        lv_list = (ListView) findViewById(R.id.lv_list);

        Cursor cursor = db.query("person", null, null, null, null, null, null);
        while (cursor.moveToNext()) {
            String name = cursor.getString(cursor.getColumnIndex("name"));
            String phone = cursor.getString(cursor.getColumnIndex("phone"));
            int salary = cursor.getShort(cursor.getColumnIndex("salary"));

            System.out.println(name + ";" + phone + ";" + salary);
            Map<String, Object> map = new HashMap<>();
            map.put("name", name);
            map.put("phone", phone);
            map.put("salary", salary);
            p_list.add(map);
        }

        lv_list.setAdapter(new SimpleAdapter(this, p_list, R.layout.item_row, new String[]{"name", "phone", "salary"},
                new int[]{R.id.txt_name, R.id.txt_phone, R.id.txt_salary}));
    }
}
