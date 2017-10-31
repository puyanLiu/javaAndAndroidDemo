package com.queqianme.www.mobilesafeproject.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.queqianme.mobilesafe.app.R;

/**
 * Created by liupuyan on 2017/10/28.
 */

public class HomeAdapter extends BaseAdapter {

    private String[] mHomeNames = new String[] { "手机防盗", "通讯卫士", "软件管理",
            "进程管理", "流量统计", "手机杀毒", "缓存清理", "高级工具", "设置中心" };

    private int[] mImageIds = new int[] { R.mipmap.home_safe,
            R.mipmap.home_callmsgsafe, R.mipmap.home_apps,
            R.mipmap.home_taskmanager, R.mipmap.home_netmanager,
            R.mipmap.home_trojan, R.mipmap.home_sysoptimize,
            R.mipmap.home_tools, R.mipmap.home_settings };

    private Context mContext;

    public HomeAdapter(Context context) {
        mContext = context;
    }

    @Override
    public int getCount() {
        return mHomeNames.length;
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = View.inflate(mContext, R.layout.list_item_home, null);

        ImageView iv_icon = (ImageView) view.findViewById(R.id.iv_icon);
        TextView tv_name = (TextView) view.findViewById(R.id.tv_name);

        iv_icon.setImageResource(mImageIds[position]);
        tv_name.setText(mHomeNames[position]);

        return view;
    }
}
