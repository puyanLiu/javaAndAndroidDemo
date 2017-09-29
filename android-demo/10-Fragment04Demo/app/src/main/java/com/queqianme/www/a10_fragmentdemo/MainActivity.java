package com.queqianme.www.a10_fragmentdemo;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.v7.app.AppCompatActivity;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements RadioGroup.OnCheckedChangeListener {

    private TextView txt_top_bar;
    private RadioButton rb_channel;
    private RadioGroup rg_tab_bar;

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

        // 获取第一个按钮 设置选中状态
        rb_channel.setChecked(true);
    }

    private void bindViews() {
        txt_top_bar = (TextView)findViewById(R.id.txt_top_bar);
        rb_channel = (RadioButton)findViewById(R.id.rb_channel);
        rg_tab_bar = (RadioGroup)findViewById(R.id.rg_tab_bar);

        rg_tab_bar.setOnCheckedChangeListener(this);
    }

    // 隐藏所有的Fragment
    private void hideAllFragment(FragmentTransaction fragmentTransaction) {
        if (fg1 != null) fragmentTransaction.hide(fg1);
        if (fg2 != null) fragmentTransaction.hide(fg2);
        if (fg3 != null) fragmentTransaction.hide(fg3);
        if (fg4 != null) fragmentTransaction.hide(fg4);
    }

    @Override
    public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i) {
        // FragmentTransaction只能使用一次，每次使用都要调用FragmentManager的beginTransaction()方法获得FragmentTransaction事物对象
        FragmentTransaction fragmentTransaction = fManager.beginTransaction();
        hideAllFragment(fragmentTransaction);
        switch (i) {
            case R.id.rb_channel:
                txt_top_bar.setText("提醒");
                if (fg1 == null) {
                    fg1 = new MyFragment("第一个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg1);
                } else {
                    fragmentTransaction.show(fg1);
                }
                break;
            case R.id.rb_message:
                txt_top_bar.setText("消息");
                if (fg2 == null) {
                    fg2 = new MyFragment("第二个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg2);
                } else {
                    fragmentTransaction.show(fg2);
                }
                break;
            case R.id.rb_better:
                txt_top_bar.setText("我的");
                if (fg3 == null) {
                    fg3 = new MyFragment("第三个Fragment");
                    fragmentTransaction.add(R.id.fl_content, fg3);
                } else {
                    fragmentTransaction.show(fg3);
                }
                break;
            case R.id.rb_setting:
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
