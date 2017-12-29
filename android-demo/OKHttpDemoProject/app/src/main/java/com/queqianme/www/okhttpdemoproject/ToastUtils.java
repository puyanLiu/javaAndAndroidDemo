package com.queqianme.www.okhttpdemoproject;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/28.
 */

public class ToastUtils {

    private static View toastView;
    private static TextView txt_message;

    public static void showToast(Context context, String message) {
        if (toastView == null) {
            toastView = View.inflate(context, R.layout.toast_popup, null);
            txt_message = (TextView)toastView.findViewById(R.id.txt_message);

            LinearLayout ll_container = (LinearLayout)toastView.findViewById(R.id.ll_container);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(App.W - ll_container.getPaddingLeft() - ll_container.getPaddingRight(), ViewGroup.LayoutParams.WRAP_CONTENT);
            txt_message.setLayoutParams(params);
        }

        txt_message.setText(message);

        Toast toast = Toast.makeText(context, message, Toast.LENGTH_SHORT);
        // 设置显示位置
        toast.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.TOP, 0, 0);
        toast.setView(toastView);
        toast.show();
    }
}
