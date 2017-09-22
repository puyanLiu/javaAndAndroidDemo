package com.example.liupuyan.a07_uidemo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.LinkedList;

import static com.example.liupuyan.a07_uidemo.R.id.imgIcon;
import static com.example.liupuyan.a07_uidemo.R.id.txtName;
import static com.example.liupuyan.a07_uidemo.R.id.txtSpeak;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class AnimalAdapter extends BaseAdapter {

    private LinkedList<Animal> mData;
    private Context mContext;

    public AnimalAdapter(LinkedList<Animal> mData, Context mContext) {
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

        // BaseAdapter优化 复用view以及自定义ViewHolder 减少findViewById()的调用
        ViewHolder holder = null;
        // 复用view 避免inflate每次都重新加载xml，其实这个view是我们提前设置好的View的缓存对象
        if (view == null) {
            view = LayoutInflater.from(mContext).inflate(R.layout.list_item2, viewGroup, false);
            // ViewHolder重用组件 因为布局一样 避免findViewById调用多次
            holder = new ViewHolder();
            holder.imgIcon = (ImageView)view.findViewById(imgIcon);
            holder.txtName = (TextView)view.findViewById(txtName);
            holder.txtSpeak = (TextView)view.findViewById(txtSpeak);
            // 将Holder存储到view中
            view.setTag(holder);
        } else {
            holder = (ViewHolder)view.getTag();
        }

        holder.imgIcon.setBackgroundResource(mData.get(i).getaIcon());
        holder.txtName.setText(mData.get(i).getaName());
        holder.txtSpeak.setText(mData.get(i).getaSpeak());

        return view;


        // 未优化的
//        view = LayoutInflater.from(mContext).inflate(R.layout.list_item2, viewGroup, false);
//        ImageView imgIcon = (ImageView)view.findViewById(R.id.imgIcon);
//        TextView txtName = (TextView)view.findViewById(R.id.txtName);
//        TextView txtSpeak = (TextView)view.findViewById(R.id.txtSpeak);
//        imgIcon.setBackgroundResource(mData.get(i).getaIcon());
//        txtName.setText(mData.get(i).getaName());
//        txtSpeak.setText(mData.get(i).getaSpeak());
//        return view;
    }

    static class ViewHolder {
        ImageView imgIcon;
        TextView txtName;
        TextView txtSpeak;
    }

    @Override
    public CharSequence[] getAutofillOptions() {
        return new CharSequence[0];
    }
}
