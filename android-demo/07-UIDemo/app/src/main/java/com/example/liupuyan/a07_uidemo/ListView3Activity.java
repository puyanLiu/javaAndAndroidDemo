package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by liupuyan on 2017/9/22.
 */

public class ListView3Activity extends Activity {

    private ListView list_one;
    private DataAdapter mAdapter = null;
    private List<DataModel> mData = null;
    private Context mContext = null;
    private TextView txt_empty = null;
    private int flag = 1;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview3);

        list_one = (ListView)findViewById(R.id.list_one);
        mContext = ListView3Activity.this;
        mData = new LinkedList<>();
        mAdapter = new DataAdapter(mContext, (LinkedList<DataModel>) mData);
        list_one.setAdapter(mAdapter);

        txt_empty = (TextView)findViewById(R.id.txt_empty);
        txt_empty.setText("暂无数据~");
        list_one.setEmptyView(txt_empty);
    }

    /*
    * notifyDataSetChanged()方法会判断是否需要重新渲染，如果当前item没有必要重新渲染 是不会重新渲染的，如果某个Item的状态发生改变，都会导致View的重绘，而重绘的并不是 所有的Item，而是View状态发生变化的那个Item
    * */
    public void btnAddClick(View v) {
        switch (v.getId()) {
            case R.id.btnAdd:
                mAdapter.add(new DataModel(R.drawable.photo2, "可爱吧 哈哈哈~~~~" + flag++));
                break;
            case R.id.btnAdd5:
                mAdapter.add(new DataModel(R.drawable.photo2, "可爱吧 哈哈哈~~~~" + flag++), 4);
                break;
        }
    }

    public void btnRemoveClick(View v) {
        switch (v.getId()) {
            case R.id.btnRemove:
                mAdapter.remove();
                break;
            case R.id.btnRemove5:
                mAdapter.remove(4);
                break;
            case R.id.btnRemoveAll:
                mAdapter.removeAll();
                break;
        }
    }

}
