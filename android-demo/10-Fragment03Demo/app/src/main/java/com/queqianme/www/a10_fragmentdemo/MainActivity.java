package com.queqianme.www.a10_fragmentdemo;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private TextView txt_top_bar;
    private TextView txt_channel;
    private TextView txt_channel_num;
    private TextView txt_message;
    private TextView txt_message_num;
    private TextView txt_better;
    private TextView txt_better_num;
    private TextView txt_setting;
    private ImageView tab_menu_setting_partner;
    private FrameLayout fl_content;

    private MyFragment fg1, fg2, fg3, fg4;
    private FragmentManager fManager;
    private FragmentTransaction fragmentTransaction;


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

        fg1 = new MyFragment();
        fragmentTransaction = fManager.beginTransaction();
        fragmentTransaction.add(R.id.fl_content, fg1).commit();
    }

    private void bindViews() {
        txt_top_bar = (TextView)findViewById(R.id.txt_top_bar);
        txt_channel = (TextView)findViewById(R.id.txt_channel);
        txt_channel_num = (TextView)findViewById(R.id.txt_channel_num);
        txt_message = (TextView)findViewById(R.id.txt_message);
        txt_message_num = (TextView)findViewById(R.id.txt_message_num);
        txt_better = (TextView)findViewById(R.id.txt_better);
        txt_better_num = (TextView)findViewById(R.id.txt_better_num);
        txt_setting = (TextView)findViewById(R.id.txt_setting);
        tab_menu_setting_partner = (ImageView)findViewById(R.id.tab_menu_setting_partner);
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
        setSelected();
        switch (view.getId()) {
            case R.id.txt_channel:
                txt_channel.setSelected(true);
                txt_top_bar.setText("提醒");
                txt_channel_num.setVisibility(View.INVISIBLE);
                break;
            case R.id.txt_message:
                txt_message.setSelected(true);
                txt_top_bar.setText("消息");
                txt_message_num.setVisibility(View.INVISIBLE);
                break;
            case R.id.txt_better:
                txt_better.setSelected(true);
                txt_top_bar.setText("我的");
                txt_better_num.setVisibility(View.INVISIBLE);
                break;
            case R.id.txt_setting:
                txt_setting.setSelected(true);
                txt_top_bar.setText("设置");
                tab_menu_setting_partner.setVisibility(View.INVISIBLE);
                break;
        }
    }
}
