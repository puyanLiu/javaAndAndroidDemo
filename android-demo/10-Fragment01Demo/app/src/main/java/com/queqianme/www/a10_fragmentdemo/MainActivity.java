package com.queqianme.www.a10_fragmentdemo;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private TextView txt_top_bar;
    private TextView txt_channel;
    private TextView txt_better;
    private TextView txt_message;
    private TextView txt_setting;
    private TextView txt_content;
    private FrameLayout fl_content;

    private MyFragment fg1, fg2, fg3, fg4;
    private FragmentManager fManager;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 隐藏顶部导航栏 未起作用
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        fManager = getFragmentManager();

        bindViews();
        // 模拟第一次点击
        txt_channel.performClick();
    }

    private void bindViews() {
        txt_top_bar = (TextView)findViewById(R.id.txt_top_bar);
        txt_channel = (TextView)findViewById(R.id.txt_channel);
        txt_better = (TextView)findViewById(R.id.txt_better);
        txt_message = (TextView)findViewById(R.id.txt_message);
        txt_setting = (TextView)findViewById(R.id.txt_setting);
        txt_content = (TextView)findViewById(R.id.txt_content);
        fl_content = (FrameLayout)findViewById(R.id.fl_content);

        txt_channel.setOnClickListener(this);
        txt_better.setOnClickListener(this);
        txt_message.setOnClickListener(this);
        txt_setting.setOnClickListener(this);
    }

    // 重置所有文本选中状态
    private void setSelected() {
        txt_channel.setSelected(false);
        txt_message.setSelected(false);
        txt_setting.setSelected(false);
        txt_better.setSelected(false);
    }

    // 隐藏所有的Fragment
    private void hideAllFragment(FragmentTransaction fragmentTransaction) {
        if (fg1 != null) fragmentTransaction.hide(fg1);
        if (fg2 != null) fragmentTransaction.hide(fg2);
        if (fg3 != null) fragmentTransaction.hide(fg3);
        if (fg4 != null) fragmentTransaction.hide(fg4);
    }

    @Override
    public void onClick(View view) {
        FragmentTransaction fragmentTransaction = fManager.beginTransaction();
        hideAllFragment(fragmentTransaction);
        setSelected();
        switch (view.getId()) {
            case R.id.txt_channel:
                txt_channel.setSelected(true);
                txt_top_bar.setText("提醒");
                if (fg1 == null) {
                    fg1 = new MyFragment("第一个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg1);
                } else {
                    fragmentTransaction.show(fg1);
                }
                break;
            case R.id.txt_message:
                txt_message.setSelected(true);
                txt_top_bar.setText("消息");
                if (fg2 == null) {
                    fg2 = new MyFragment("第二个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg2);
                } else {
                    fragmentTransaction.show(fg2);
                }
                break;
            case R.id.txt_better:
                txt_better.setSelected(true);
                txt_top_bar.setText("我的");
                if (fg3 == null) {
                    fg3 = new MyFragment("第三个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg3);
                } else {
                    fragmentTransaction.show(fg3);
                }
                break;
            case R.id.txt_setting:
                txt_setting.setSelected(true);
                txt_top_bar.setText("设置");
                if (fg4 == null) {
                    fg4 = new MyFragment("第四个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg4);
                } else {
                    fragmentTransaction.show(fg4);
                }
                break;
        }
        fragmentTransaction.commit();
    }
}
