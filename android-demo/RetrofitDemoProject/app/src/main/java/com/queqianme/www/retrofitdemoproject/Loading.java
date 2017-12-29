package com.queqianme.www.retrofitdemoproject;

import android.app.Dialog;
import android.content.Context;
import android.support.annotation.NonNull;
import android.view.Gravity;
import android.view.Window;
import android.view.WindowManager;

/**
 * Created by liupuyan on 2017/12/22.
 */

public abstract class Loading extends Dialog {

    public abstract void cancel();

    public Loading(@NonNull Context context) {
        super(context);

        // 加载布局
        setContentView(R.layout.view_loading);
        // 设置Dialog参数
        Window window = getWindow();
        WindowManager.LayoutParams params = window.getAttributes();
        params.gravity = Gravity.CENTER;
        window.setAttributes(params);
    }

    /**
     * 封装Dialog消失的回调
     */
    @Override
    public void onBackPressed() {
        // 回调
        cancel();
        // 关闭Loading
        dismiss();
    }
}
