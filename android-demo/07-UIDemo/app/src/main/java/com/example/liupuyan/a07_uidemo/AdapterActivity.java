package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class AdapterActivity extends Activity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adapter);

        // 显示的数据
//        String[] strs = {"A", "B", "C"};
        List<String> data = new ArrayList<>();
        data.add("A");
        data.add("B");
        data.add("C");
        // 创建ArrayAdapter
        // support_simple_spinner_dropdown_item 系统提供给我们的一些ListView模板
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, R.layout.support_simple_spinner_dropdown_item, data);
        // 获取listView 为listview设置Adapter设置适配器
        ListView lv1 = (ListView)findViewById(R.id.lv1);
        lv1.setAdapter(adapter);

        // 加载数组资源的xml文件
        ListView lv3 = (ListView)findViewById(R.id.lv3);
        ArrayAdapter<CharSequence> adapter3 = ArrayAdapter.createFromResource(this, R.array.myarray, R.layout.support_simple_spinner_dropdown_item);
        lv3.setAdapter(adapter3);
    }
}
