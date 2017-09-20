package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class ListView1Activity extends Activity {

    private String[] names = new String[]{"张三", "李四", "王五"};
    private String[] says = new String[]{"张三好厉害~~~~", "李四好强壮~~~", "王五很认真"};
    private int[] imgIds = new int[]{R.drawable.photo2, R.drawable.photo3, R.drawable.photo2};

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview1);

        List<Map<String, Object>> listitem = new ArrayList<>();
        for (int i = 0; i < names.length; i++) {
            Map<String, Object> showitem = new HashMap<>();
            showitem.put("touxiang", imgIds[i]);
            showitem.put("name", names[i]);
            showitem.put("says", says[i]);
            listitem.add(showitem);
        }

        SimpleAdapter adapter = new SimpleAdapter(this, listitem, R.layout.list_item, new String[]{"touxiang", "name", "says"}, new int[]{R.id.imgtou, R.id.name, R.id.says});

        ListView lv = (ListView)findViewById(R.id.lv1);
        lv.setAdapter(adapter);

    }
}
