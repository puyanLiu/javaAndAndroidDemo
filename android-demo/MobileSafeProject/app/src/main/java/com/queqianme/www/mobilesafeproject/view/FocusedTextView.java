package com.queqianme.www.mobilesafeproject.view;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;

import com.queqianme.www.mobilesafeproject.utils.LogUtils;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * 强制获取焦点的TextView
 */

public class FocusedTextView extends AppCompatTextView {

    /**
     * 从代码中new对象 调用
     * @param context
     */
    public FocusedTextView(Context context) {
        super(context);

        LogUtils.i("A", "FocusedTextView context");
    }

    /**
     * 当布局文件中具有属性时，系统底层解析时，会调用此构造方法
     * @param context
     * @param attrs
     */
    public FocusedTextView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);

        LogUtils.i("A", "FocusedTextView context AttributeSet");
    }

    /**
     * 当布局文件中具有属性和样式时，系统底层解析时，会调用此构造方法
     * @param context
     * @param attrs
     * @param defStyleAttr
     */
    public FocusedTextView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

        LogUtils.i("A", "FocusedTextView context AttributeSet defStyleAttr");
    }

    @Override
    public boolean isFocused() {
        return true; // 强制让TextView具有焦点
    }
}
