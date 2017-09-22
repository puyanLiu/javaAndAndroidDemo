package com.example.liupuyan.a07_uidemo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.LinkedList;

/**
 * Created by liupuyan on 2017/9/22.
 */

public class DataAdapter extends BaseAdapter {

    private Context mContext;
    private LinkedList<DataModel> mData;

    public DataAdapter() {
    }

    public DataAdapter(Context mContext, LinkedList<DataModel> mData) {
        this.mContext = mContext;
        this.mData = mData;
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
        ViewHolder viewholder = null;
        if (view == null) {
            view = LayoutInflater.from(mContext).inflate(R.layout.list_item3, viewGroup, false);
            viewholder = new ViewHolder();
            viewholder.img_icon = (ImageView)view.findViewById(R.id.img_icon);
            viewholder.txt_content = (TextView)view.findViewById(R.id.txt_content);
            view.setTag(viewholder);
        } else {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.img_icon.setImageResource(mData.get(i).getImgId());
        viewholder.txt_content.setText(mData.get(i).getContent());
        return view;
    }

    public void add(DataModel model) {
        if (mData == null) {
            mData = new LinkedList<>();
        }
        mData.add(model);
        notifyDataSetChanged();
    }

    public void add(DataModel model, int position) {
        if (mData == null) {
            mData = new LinkedList<>();
        }
        if (mData.size() > position) {
            mData.add(position, model);
        } else {
            mData.add(model);
        }
        notifyDataSetChanged();
    }

    public void remove() {
        if (mData != null && mData.size() > 0) {
            mData.remove();
            notifyDataSetChanged();
        }
    }

    public void remove(int position) {
        if (mData != null && mData.size() > position) {
            mData.remove(position);
            notifyDataSetChanged();
        }
    }

    public void removeAll() {
        if (mData != null) {
            mData.clear();
            notifyDataSetChanged();
        }
    }

    private class ViewHolder {
        ImageView img_icon;
        TextView txt_content;
    }
}
