package com.queqianme.www.wisdomsmsproject.utils;

import android.app.Activity;
import android.view.inputmethod.InputMethodManager;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class InputUtils {
    /**
     * 输入法管理器 隐藏输入法软键盘
     */
    public static void hideInput(Activity activity) {
        InputMethodManager manager = (InputMethodManager) activity.getSystemService(activity.INPUT_METHOD_SERVICE);
        manager.hideSoftInputFromWindow(activity.getWindow().getDecorView().getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);
    }
}
