package com.queqianme.www.wisdomsmsproject.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;

import com.queqianme.www.sms.R;

/**
 * Created by liupuyan on 2017/11/9.
 */

public abstract class BaseDialog extends AlertDialog {
    protected BaseDialog(Context context) {
        // 通过构造方法设置弧形边角的背景
        super(context, R.style.BaseDialog);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        initView();
        initListener();
        initData();
    }

    public abstract void initView();
    public abstract void initListener();
    public abstract void initData();
}
