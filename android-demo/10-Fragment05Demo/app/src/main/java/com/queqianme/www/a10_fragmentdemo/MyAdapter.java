package com.queqianme.www.a10_fragmentdemo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

/**
 * Created by liupuyan on 2017/10/9.
 */

public class MyAdapter extends BaseAdapter {

    private List<DataModel> mData;
    private Context mContext;

    public MyAdapter(List<DataModel> mData, Context mContext) {
        this.mData = mData;
        this.mContext = mContext;
    }

    @Override
    public int getCount() {
        return mData.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(mContext).inflate(R.layout.list_item, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.txt_item_title = (TextView)view.findViewById(R.id.txt_item);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder)view.getTag();
        }
        viewHolder.txt_item_title.setText(mData.get(i).getNew_title());
        return view;
    }

    private class ViewHolder {
        TextView txt_item_title;
    }
}
