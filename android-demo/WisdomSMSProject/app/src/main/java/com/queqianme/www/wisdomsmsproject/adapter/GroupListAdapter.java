package com.queqianme.www.wisdomsmsproject.adapter;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.support.v4.widget.CursorAdapter;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.bean.GroupModel;
import com.queqianme.www.wisdomsmsproject.utils.DateShowUtils;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class GroupListAdapter extends CursorAdapter {
    public GroupListAdapter(Context context, Cursor c, boolean autoRequery) {
        super(context, c, autoRequery);
    }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return View.inflate(context, R.layout.item_group_list, null);
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        ViewHolder holder = getHolder(view);

        // 根据cursor内容创建会话对象，此时cursor的指针已经移动至正确的位置
        GroupModel model = GroupModel.createFromCursor(cursor);
        holder.txt_name.setText(model.getName() + "(" + model.getThread_count() + ")");
        // 设置时间
        holder.txt_date.setText(DateShowUtils.showDate(context, model.getCreate_date()));
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
        private TextView txt_date;

        public ViewHolder(View view) {
            txt_name = (TextView) view.findViewById(R.id.txt_name);
            txt_date = (TextView) view.findViewById(R.id.txt_date);
        }
    }
}
