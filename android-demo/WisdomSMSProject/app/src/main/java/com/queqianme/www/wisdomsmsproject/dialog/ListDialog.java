package com.queqianme.www.wisdomsmsproject.dialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.queqianme.www.sms.R;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class ListDialog extends BaseDialog {

    private TextView txt_title;
    private ListView lv_list;
    private OnListDialogListener onListDialogListener;
    private String[] items;
    private String title;
    private Context context;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public OnListDialogListener getOnListDialogListener() {
        return onListDialogListener;
    }

    public void setOnListDialogListener(OnListDialogListener onListDialogListener) {
        this.onListDialogListener = onListDialogListener;
    }

    public String[] getItems() {
        return items;
    }

    public void setItems(String[] items) {
        this.items = items;
    }

    protected ListDialog(Context context) {
        super(context);
    }

    @Override
    public void initView() {
        setContentView(R.layout.dialog_list);

        txt_title = (TextView) findViewById(R.id.txt_title);
        lv_list = (ListView) findViewById(R.id.lv_list);
    }

    @Override
    public void initListener() {
        txt_title = (TextView) findViewById(R.id.txt_title);

        lv_list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (onListDialogListener != null) {
                    onListDialogListener.onItemClick(parent, view, position, id);
                }
                dismiss();
            }
        });
    }

    @Override
    public void initData() {
        txt_title.setText(title);
        lv_list.setAdapter(new ListDialogAdapter());
    }

    public static void showDialog(Context context, String title, String[] items, OnListDialogListener onListDialogListener) {
        ListDialog dialog = new ListDialog(context);
        dialog.setTitle(title);
        dialog.setItems(items);
        dialog.context = context;
        dialog.setOnListDialogListener(onListDialogListener);
        dialog.show();
    }

    public interface OnListDialogListener {
        void onItemClick(AdapterView<?> parent, View view, int position, long id);
    }

    class ListDialogAdapter extends BaseAdapter {

        @Override
        public int getCount() {
            return items.length;
        }

        @Override
        public Object getItem(int position) {
            return null;
        }

        @Override
        public long getItemId(int position) {
            return 0;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = View.inflate(context, R.layout.item_dialog_list, null);
            TextView txt_item = (TextView)view.findViewById(R.id.txt_item);
            txt_item.setText(items[position]);
            return view;
        }
    }
}
