package com.example.liupuyan.a06_activitydemo;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

/**
 * Created by liupuyan on 2017/10/25.
 */
public class SmsActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_contact);

        final String[] contents = new String[]{
                "我正在开会，一会回你",
                "我正在吃饭，一会回你",
                "我正在约会，一会回你"
        };
        //显示联系人列表
        ListView lv = (ListView) findViewById(R.id.lv);
        lv.setAdapter(new ArrayAdapter<String>(this, R.layout.item_row, R.id.tv, contents));

        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Intent data = new Intent();
                // 把要传递的数据封装至intent中
                data.putExtra("content", contents[position]);
                // 当此Activity销毁时，返回至上一个Activity时，会把这个intent对象传递给上一个Activity
                setResult(10, data);
                // 销毁当前Activity
                finish();
            }
        });
    }
}