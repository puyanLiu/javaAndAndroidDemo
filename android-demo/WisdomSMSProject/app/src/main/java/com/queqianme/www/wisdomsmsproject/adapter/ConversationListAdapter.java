package com.queqianme.www.wisdomsmsproject.adapter;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.widget.CursorAdapter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.bean.ConversationModel;
import com.queqianme.www.wisdomsmsproject.dao.ContactDao;
import com.queqianme.www.wisdomsmsproject.utils.DateShowUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/11/8.
 */

public class ConversationListAdapter extends CursorAdapter {

    private boolean isSelectMode = false;
    private List<Integer> selectedLists = new ArrayList<>();

    public boolean isSelectMode() {
        return isSelectMode;
    }

    public void setSelectMode(boolean selectMode) {
        isSelectMode = selectMode;
        notifyDataSetChanged();
    }

    public List<Integer> getSelectedLists() {
        return selectedLists;
    }

    public ConversationListAdapter(Context context, Cursor c, boolean autoRequery) {
        super(context, c, autoRequery);
    }

    /**
     * 返回的View对象就是listView的条目
     *
     * @param context
     * @param cursor
     * @param parent
     * @return
     */
    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return View.inflate(context, R.layout.item_conversation_list, null);
    }

    /**
     * 设置listView每个条目显示的内容
     *
     * @param view
     * @param context
     * @param cursor
     */
    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        ViewHolder holder = getHolder(view);

        // 根据cursor内容创建会话对象，此时cursor的指针已经移动至正确的位置
        ConversationModel model = ConversationModel.createFromCursor(cursor);

        // 判断当前是否进入选择模式
        if (isSelectMode) {
            holder.iv_check.setVisibility(View.VISIBLE);

            if (selectedLists.contains(model.getThread_id())) {
                holder.iv_check.setBackgroundResource(R.mipmap.common_checkbox_checked);
            } else {
                holder.iv_check.setBackgroundResource(R.mipmap.common_checkbox_normal);
            }

        } else {
            holder.iv_check.setVisibility(View.GONE);
        }
        String name = ContactDao.getNameByAddress(context.getContentResolver(), model.getAddress());
        if (!TextUtils.isEmpty(name)) {
            holder.txt_phone.setText(name + "(" + model.getMsg_count() + ")");
        } else {
            holder.txt_phone.setText(model.getAddress() + "(" + model.getMsg_count() + ")");
        }
        holder.txt_body.setText(model.getSnippet());

        // 设置时间
        holder.txt_date.setText(DateShowUtils.showDate(context, model.getDate()));

        // 设置联系人头像
        Bitmap avatar = ContactDao.getAvatarByAddress(context.getContentResolver(), model.getAddress());
        if (avatar == null) {
            holder.iv_avatar.setBackgroundResource(R.mipmap.img_default_avatar);
        } else {
            holder.iv_avatar.setBackground(new BitmapDrawable(null, avatar));
        }
    }

    /**
     * 把选中的条目存入集合
     * @param position
     */
    public void selectSingle(int position) {
        Cursor cursor = (Cursor) getItem(position);
        ConversationModel model = ConversationModel.createFromCursor(cursor);
        // 判断是否已经存在集合中，存在删除，不存在添加
        if (selectedLists.contains(model.getThread_id())) {
            // 此处必须强转为对象，否则是把参数作为索引删除
            selectedLists.remove((Integer) model.getThread_id());
        } else {
            selectedLists.add(model.getThread_id());
        }
        notifyDataSetChanged();
    }

    /**
     * 取消全部选择
     */
    public void cancelAllSelect() {
        selectedLists.clear();
        notifyDataSetChanged();
    }

    /**
     * 全选
     */
    public void selectedAll() {
        Cursor cursor = getCursor();
        cursor.moveToPosition(-1);
        // 遍历cursor取出所有会话
        selectedLists.clear();
        while (cursor.moveToNext()) {
            ConversationModel model = ConversationModel.createFromCursor(cursor);
            selectedLists.add(model.getThread_id());
        }
        notifyDataSetChanged();
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

        private ImageView iv_avatar;
        private TextView txt_phone;
        private TextView txt_body;
        private TextView txt_date;
        private ImageView iv_check;

        public ViewHolder(View view) {
            iv_avatar = (ImageView) view.findViewById(R.id.iv_avatar);
            txt_phone = (TextView) view.findViewById(R.id.txt_phone);
            txt_body = (TextView) view.findViewById(R.id.txt_body);
            txt_date = (TextView) view.findViewById(R.id.txt_date);
            iv_check = (ImageView) view.findViewById(R.id.iv_check);
        }
    }
}
