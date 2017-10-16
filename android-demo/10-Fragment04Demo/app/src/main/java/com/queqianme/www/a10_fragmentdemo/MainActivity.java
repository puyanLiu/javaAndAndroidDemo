package com.queqianme.www.a10_fragmentdemo;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements RadioGroup.OnCheckedChangeListener, ViewPager.OnPageChangeListener {

    // 代表页面的常量
    public static final int PAGE_ONE = 0;
    public static final int PAGE_TWO = 1;
    public static final int PAGE_THREE = 2;
    public static final int PAGE_FOUR = 3;

    private TextView txt_top_bar;
    private RadioButton rb_channel;
    private RadioButton rb_message;
    private RadioButton rb_better;
    private RadioButton rb_setting;
    private RadioGroup rg_tab_bar;
    private ViewPager vp_content;

    private MyFragmentPagerAdapter mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 隐藏顶部导航栏 未起作用
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mAdapter = new MyFragmentPagerAdapter(getSupportFragmentManager());

        bindViews();

        // 获取第一个按钮 设置选中状态
        rb_channel.setChecked(true);
    }

    private void bindViews() {
        txt_top_bar = (TextView)findViewById(R.id.txt_top_bar);
        rb_channel = (RadioButton)findViewById(R.id.rb_channel);
        rb_message = (RadioButton)findViewById(R.id.rb_message);
        rb_better = (RadioButton)findViewById(R.id.rb_better);
        rb_setting = (RadioButton)findViewById(R.id.rb_setting);
        rg_tab_bar = (RadioGroup)findViewById(R.id.rg_tab_bar);
        vp_content = (ViewPager)findViewById(R.id.vp_content);

        rg_tab_bar.setOnCheckedChangeListener(this);

        vp_content.setAdapter(mAdapter);
        vp_content.setCurrentItem(0);
        vp_content.addOnPageChangeListener(this);
    }

    @Override
    public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i) {
        switch (i) {
            case R.id.rb_channel:
                txt_top_bar.setText("提醒");
                vp_content.setCurrentItem(PAGE_ONE);
                break;
            case R.id.rb_message:
                txt_top_bar.setText("信息");
                vp_content.setCurrentItem(PAGE_TWO);
                break;
            case R.id.rb_better:
                txt_top_bar.setText("我的");
                vp_content.setCurrentItem(PAGE_THREE);
                break;
            case R.id.rb_setting:
                txt_top_bar.setText("设置");
                vp_content.setCurrentItem(PAGE_FOUR);
                break;
        }
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

    }

    @Override
    public void onPageSelected(int position) {

    }

    @Override
    public void onPageScrollStateChanged(int state) {
        //state的状态有三个，0表示什么都没做，1正在滑动，2滑动完毕
        if (state == 2) {
            switch (vp_content.getCurrentItem()) {
                case PAGE_ONE:
                    rb_channel.setChecked(true);
                    break;
                case PAGE_TWO:
                    rb_message.setChecked(true);
                    break;
                case PAGE_THREE:
                    rb_better.setChecked(true);
                    break;
                case PAGE_FOUR:
                    rb_setting.setChecked(true);
                    break;
            }
        }
    }
}
