package com.queqianme.www.wisdomsmsproject.utils;

import android.content.Context;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/28.
 */

public class ToastUtils {
    public static void showToast(Context ctx, String text) {
        Toast.makeText(ctx, text, Toast.LENGTH_SHORT).show();
    }
}
