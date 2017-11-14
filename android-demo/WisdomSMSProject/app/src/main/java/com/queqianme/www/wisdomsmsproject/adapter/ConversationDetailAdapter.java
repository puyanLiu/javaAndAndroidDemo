package com.queqianme.www.wisdomsmsproject.adapter;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.bean.SmsModel;
import com.queqianme.www.wisdomsmsproject.globle.Constant;
import com.queqianme.www.wisdomsmsproject.utils.DateShowUtils;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class ConversationDetailAdapter extends CursorAdapter {

    static final int DURATION = 3 * 60 * 1000;
    ListView lv_list;

    public ConversationDetailAdapter(Context context, Cursor c, boolean autoRequery, ListView lv) {
        super(context, c, autoRequery);
        lv_list = lv;
    }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return View.inflate(context, R.layout.item_conversation_detail, null);
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        ViewHolder holder = getHolder(view);

        // 根据cursor内容创建会话对象，此时cursor的指针已经移动至正确的位置
        SmsModel model = SmsModel.createFromCursor(cursor);

        // 第一条不需要比较
        if (cursor.getPosition() == 0) {
            holder.txt_date.setVisibility(View.VISIBLE);
            holder.txt_date.setText(DateShowUtils.showDate(context, model.getDate()));
        } else {
            // 当前短线与上一条短信的时间间隔是否超过3分钟
            long preDate = getPreviousSmsDate(cursor.getPosition());
            if (model.getDate() - preDate > DURATION) {
                holder.txt_date.setVisibility(View.VISIBLE);
                holder.txt_date.setText(DateShowUtils.showDate(context, model.getDate()));
            } else {
                holder.txt_date.setVisibility(View.GONE);
            }
        }

        // 内容
        if (model.getType() == Constant.SMS_Type.SMS_RECEIVE) {
            holder.txt_receive.setVisibility(View.VISIBLE);
            holder.txt_send.setVisibility(View.GONE);
            holder.txt_receive.setText(model.getBody());
        } else {
            holder.txt_send.setVisibility(View.VISIBLE);
            holder.txt_receive.setVisibility(View.GONE);
            holder.txt_send.setText(model.getBody());
        }
    }

    @Override
    public void changeCursor(Cursor cursor) {
        super.changeCursor(cursor);
        // listView滑动到指定的条目
        lv_list.setSelection(getCount());
    }

    /**
     * 获取上一条短信的时间
     * @param position
     * @return
     */
    private long getPreviousSmsDate(int position) {
        Cursor cursor = (Cursor) getItem(position - 1);
        SmsModel model = SmsModel.createFromCursor(cursor);
        return model.getDate();
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

        private TextView txt_date;
        private TextView txt_receive;
        private TextView txt_send;

        public ViewHolder(View view) {
            txt_date = (TextView) view.findViewById(R.id.txt_date);
            txt_receive = (TextView) view.findViewById(R.id.txt_receive);
            txt_send = (TextView) view.findViewById(R.id.txt_send);
        }
    }
}
