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
        view = LayoutInflater.from(mContext).inflate(R.layout.list_item2, viewGroup, false);
        ImageView imgIcon = (ImageView)view.findViewById(R.id.imgIcon);
        TextView txtName = (TextView)view.findViewById(R.id.txtName);
        TextView txtSpeak = (TextView)view.findViewById(R.id.txtSpeak);
        imgIcon.setBackgroundResource(mData.get(i).getaIcon());
        txtName.setText(mData.get(i).getaName());
        txtSpeak.setText(mData.get(i).getaSpeak());
        return view;
    }

    @Override
    public CharSequence[] getAutofillOptions() {
        return new CharSequence[0];
    }
}
