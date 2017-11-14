package com.queqianme.www.wisdomsmsproject.adapter;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.TextView;

import com.queqianme.www.sms.R;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class AutoSearchAdapter extends CursorAdapter {
    public AutoSearchAdapter(Context context, Cursor c, boolean autoRequery) {
        super(context, c, autoRequery);
    }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return View.inflate(context, R.layout.item_auto_search, null);
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        ViewHolder holder = getHolder(view);

        holder.txt_name.setText(cursor.getString(cursor.getColumnIndex("display_name")));
        holder.txt_phone.setText(cursor.getString(cursor.getColumnIndex("data1")));
    }

    /**
     * 点击下拉条目时的返回值
     * @param cursor
     * @return
     */
    @Override
    public CharSequence convertToString(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndex("data1"));
    }

    /**
     * @param view 条目的View对象
     * @return
     */
    private ViewHolder getHolder(View view) {
        // 先判断条目View对象是有有holder
        ViewHolder holder = (ViewHolder) view.getTag();
        if (holder == null) {
            holder = new ViewHolder(view);
            view.setTag(holder);
        }
        return holder;
    }

    class ViewHolder {

        private TextView txt_name;
        private TextView txt_phone;

        public ViewHolder(View view) {
            txt_name = (TextView) view.findViewById(R.id.txt_name);
            txt_phone = (TextView) view.findViewById(R.id.txt_phone);
        }
    }
}
