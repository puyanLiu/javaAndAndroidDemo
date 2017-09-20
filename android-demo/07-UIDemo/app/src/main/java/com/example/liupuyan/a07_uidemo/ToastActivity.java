package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class ToastActivity extends Activity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_toast);
    }

    public void toast2Click(View v) {
        midToast2("字体哈哈哈哈或哈哈哈哈", Toast.LENGTH_SHORT);
    }

    private void midToast2(String str, int showTime) {
        LayoutInflater inflater = getLayoutInflater();
        View view = inflater.inflate(R.layout.view_toast_custom, (ViewGroup)findViewById(R.id.customToast));
        ImageView imgLogo = (ImageView)view.findViewById(R.id.imgLogo);
        TextView tvMsg = (TextView)view.findViewById(R.id.tvMsg);
        tvMsg.setText(str);
        Toast toast = new Toast(ToastActivity.this);
        toast.setGravity(Gravity.CENTER, 0, 0);
        toast.setDuration(Toast.LENGTH_LONG);
        toast.setView(view);
        toast.show();
    }

    public void toast1Click(View v) {
        midToast1("嘿嘿", Toast.LENGTH_SHORT);
    }

    private void midToast1(String str, int showTime) {
        Toast toast = Toast.makeText(ToastActivity.this, str, showTime);
        // 设置显示位置
        toast.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.BOTTOM, 0, 0);
        LinearLayout layout = (LinearLayout)toast.getView();
        layout.setBackgroundColor(Color.BLUE);
        ImageView image = new ImageView(this);
        image.setImageResource(R.drawable.photo2);
        layout.addView(image, 0);
        TextView v = (TextView)toast.getView().findViewById(android.R.id.message);
        // 设置字体颜色
        v.setTextColor(Color.YELLOW);
        toast.show();
    }

    public void toastCick(View v) {
        midToast("嘿嘿", Toast.LENGTH_SHORT);
    }

    private void midToast(String str, int showTime) {
        Toast toast = Toast.makeText(ToastActivity.this, str, showTime);
        // 设置显示位置
        toast.setGravity(Gravity.CENTER_VERTICAL | Gravity.CENTER_HORIZONTAL, 0, 0);
        TextView v = (TextView)toast.getView().findViewById(android.R.id.message);
        // 设置字体颜色
        v.setTextColor(Color.YELLOW);
        toast.show();
    }
}
