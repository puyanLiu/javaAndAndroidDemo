package com.example.liupuyan.a07_uidemo;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.LinkedList;

/**
 * Created by liupuyan on 2017/9/22.
 * 构建可复用的自定义BaseAdapter
 */

public class MyAdapter<T> extends BaseAdapter {
    private Context mContext;
    // Entity设置成泛型
    private LinkedList<T> mData;

    public MyAdapter() {
    }

    public MyAdapter(Context mContext, LinkedList<T> mData) {
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
        return view;
    }

    public void add(T model) {
        if (mData == null) {
            mData = new LinkedList<>();
        }
        mData.add(model);
        notifyDataSetChanged();
    }

    public void add(T model, int position) {
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

    public static class ViewHolder {
        private SparseArray<View> mViews; // 存储ListView中item中的View
        private View item; // 存放View
        private int position;
        private Context context;

        private ViewHolder(Context context, ViewGroup viewGroup, int layoutRes) {
            mViews = new SparseArray<>();
            this.context = context;
            View view = LayoutInflater.from(context).inflate(layoutRes, viewGroup, false);
            view.setTag(this);
            item = view;
        }

        // 绑定ViewHolder与item
        public static ViewHolder bind(Context context, View view, ViewGroup viewGroup, int layoutRes, int i) {
            ViewHolder viewholder = null;
            if (view == null) {
                view = LayoutInflater.from(context).inflate(layoutRes, viewGroup, false);
                viewholder = new ViewHolder(context, viewGroup, layoutRes);
            } else {
                viewholder = (ViewHolder)view.getTag();
                viewholder.item = view;
            }
            viewholder.position = i;
            return viewholder;
        }

        ImageView img_icon;
        TextView txt_content;
    }
}
