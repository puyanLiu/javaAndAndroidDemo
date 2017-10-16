package com.queqianme.www.a12_sqlitedemo;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/10/16.
 */

public class ListViewActivity extends Activity {

    private MyOpenHelper1 oh;
    private SQLiteDatabase db;
    private ListView lv_list;
    private List<PersonModel> p_list;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview);

        oh = new MyOpenHelper1(ListViewActivity.this, "people.db", null, 1);
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

        lv_list.setAdapter(new MyAdapter());
    }

    class MyAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return p_list.size();
        }

        @Override
        public Object getItem(int position) {
            return null;
        }

        @Override
        public long getItemId(int position) {
            return 0;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            System.out.println("getview-----------" + position + ":" + convertView);

//            TextView tv = new TextView(ListViewActivity.this);
//            tv.setText(p_list.get(position).toString());
//            return tv;

            // 获取布局填充器
//            LayoutInflater factory = LayoutInflater.from(ListViewActivity.this);
            // 相当于View.inflate(ListViewActivity.this, R.layout.item_row, null)
//            LayoutInflater factory = (LayoutInflater) getSystemService(LAYOUT_INFLATER_SERVICE);
//            View view = factory.inflate(R.layout.item_row, null);

            View view = null;
            if (convertView == null) {
                view = View.inflate(ListViewActivity.this, R.layout.item_row, null);
            } else {
                view = convertView;
            }

            PersonModel personModel = p_list.get(position);

            TextView txt_name = (TextView)view.findViewById(R.id.txt_name);
            txt_name.setText(personModel.getName());

            TextView txt_phone = (TextView)view.findViewById(R.id.txt_phone);
            txt_phone.setText(personModel.getPhone());

            TextView txt_salary = (TextView)view.findViewById(R.id.txt_salary);
            txt_salary.setText(personModel.getSalary() + ""); // 如果直接使用整形 会被当成id使用

            return view;
        }
    }
}
