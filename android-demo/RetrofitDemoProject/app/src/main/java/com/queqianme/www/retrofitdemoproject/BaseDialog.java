package com.queqianme.www.retrofitdemoproject;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;

import butterknife.ButterKnife;

/**
 * Created by liupuyan on 2017/11/22.
 */

public abstract class BaseDialog extends AlertDialog {
    protected BaseDialog(Context context) {
        // 通过构造方法设置弧形边角的背景
        super(context, R.style.Theme_AppCompat_Dialog_BaseDialog);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(getContentLayoutId());
        ButterKnife.bind(this);

        initData();
    }
    /**
     * 返回资源文件Id
     * @return
     */
    public abstract int getContentLayoutId();
    public abstract void initData();
}
