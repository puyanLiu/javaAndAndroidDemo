package com.queqianme.www.mobilesafeproject.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.queqianme.www.mobilesafeproject.R;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * 设置中心自定义组合控件
 *
 * 自定义组合控件步骤
 * 1.写一个类继承ViewGroup子类
 * 2.写布局文件
 * 3.将布局添加到容器中
 * 4.增加API
 * 5.自定义属性（1、values/attrs.xml，2、自定义命名空间，3、在自定义View中配置属性，4、在自定义View中加载属性值）
 */

public class SettingItemView extends RelativeLayout {

    private TextView tv_title;
    private TextView tv_desc;
    private CheckBox cb_check;

    public SettingItemView(Context context) {
        super(context);
    }

    public SettingItemView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SettingItemView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    /**
     * 初始化布局
     */
    private void initView() {
        View child = View.inflate(getContext(), R.layout.view_item_setting, null); // 初始化组合控件

        tv_title = (TextView) child.findViewById(R.id.tv_title);
        tv_desc = (TextView) child.findViewById(R.id.tv_desc);
        cb_check = (CheckBox) child.findViewById(R.id.cb_check);

        this.addView(child); // 将布局添加到当前的容器对象
    }

}
