package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class ListView2Activity extends Activity implements AdapterView.OnItemClickListener {

    private List<Animal> mData = null;
    private Context mContext;
    private AnimalAdapter mAdapter = null;
    private ListView list_animal;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview2);

        mContext = ListView2Activity.this;
        list_animal = (ListView)findViewById(R.id.lv1);

        // 动态加载顶部View和底部View
        LayoutInflater inflater = LayoutInflater.from(this);
        View headerView = inflater.inflate(R.layout.view_header, null, false);
        View footerView = inflater.inflate(R.layout.view_footer, null, false);

        mData = new LinkedList<>();
        mData.add(new Animal("狗说", "你是狗么？", R.drawable.photo2));
        mData.add(new Animal("牛说", "你是牛么？", R.drawable.photo3));
        mData.add(new Animal("鸭说", "你是鸭么？", R.drawable.photo2));
        mData.add(new Animal("鱼说", "你是鱼么？", R.drawable.photo3));
        mData.add(new Animal("马说", "你是马么？", R.drawable.photo2));
        mData.add(new Animal("狗说", "你是狗么？", R.drawable.photo2));
        mData.add(new Animal("牛说", "你是牛么？", R.drawable.photo3));
        mData.add(new Animal("鸭说", "你是鸭么？", R.drawable.photo2));
        mData.add(new Animal("鱼说", "你是鱼么？", R.drawable.photo3));
        mData.add(new Animal("马说", "你是马么？", R.drawable.photo2));
        mAdapter = new AnimalAdapter((LinkedList<Animal>) mData, mContext);

        // 添加表头表尾要在setAdapter之前调用
        list_animal.addHeaderView(headerView);
        list_animal.addFooterView(footerView);

        list_animal.setAdapter(mAdapter);
        list_animal.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        // 添加表头表尾后，我们发现positon是从表头开始算的，就是你添加的第一个数据本来的 postion 是 0，但是此时却变成了 1，因为表头也算
        Toast.makeText(mContext, "你点击了第" + i + "项", Toast.LENGTH_SHORT).show();
    }
}
