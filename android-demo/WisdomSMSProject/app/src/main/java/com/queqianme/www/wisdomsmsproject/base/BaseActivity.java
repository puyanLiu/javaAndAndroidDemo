package com.queqianme.www.wisdomsmsproject.base;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

/**
 * Created by liupuyan on 2017/11/7.
 */
public abstract class BaseActivity extends FragmentActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        initView();
        initTitleBar();
        initListener();
        initData();
    }

    public abstract void initView();
    public abstract void initTitleBar();
    public abstract void initListener();
    public abstract void initData();
}