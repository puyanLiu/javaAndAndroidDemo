package com.queqianme.www.mobilesafeproject.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.queqianme.mobilesafe.app.R;
import com.queqianme.www.mobilesafeproject.utils.LogUtils;

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
    private String desc_on;
    private String desc_off;

    public SettingItemView(Context context) {
        super(context);
        initView();
    }

    public SettingItemView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView();

        int count = attrs.getAttributeCount();
        for (int i = 0; i < count; i++) {
            String attributeName = attrs.getAttributeName(i);
            String attributeValue = attrs.getAttributeValue(i);
            LogUtils.i("A", attributeName + "=" + attributeValue);
        }

        // 未获取到
        // String title = attrs.getAttributeValue("http://schemas.android.com/apk/res/com.queqianme.mobilesafe.app", "title");

        // 获取styleable资源对象
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SettingItemView);
        // 获取styleable资源对象里面的字符串
        String title = typedArray.getString(R.styleable.SettingItemView_title);
        desc_on = typedArray.getString(R.styleable.SettingItemView_desc_on);
        desc_off = typedArray.getString(R.styleable.SettingItemView_desc_off);

        setTitle(title);
    }

    public SettingItemView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initView();
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

    /**
     * 设置标题
     * @param title
     */
    public void setTitle(String title) {
        tv_title.setText(title);
    }

    /**
     * 设置描述
     * @param desc
     */
    public void setDesc(String desc) {
        tv_desc.setText(desc);
    }

    /**
     * 判断是否勾选
     * @return
     */
    public boolean isChecked() {
        return cb_check.isChecked();
    }

    /**
     * 设置勾选状态
     * @param checked
     */
    public void setChecked(boolean checked) {
        cb_check.setChecked(checked);

        setDesc(checked ? desc_on : desc_off);
    }

}
