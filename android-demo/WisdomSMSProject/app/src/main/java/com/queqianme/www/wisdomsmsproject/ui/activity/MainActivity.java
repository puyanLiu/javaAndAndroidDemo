package com.queqianme.www.wisdomsmsproject.ui.activity;

import android.graphics.Color;
import android.graphics.Point;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.MainPagerAdater;
import com.queqianme.www.wisdomsmsproject.base.BaseActivity;
import com.queqianme.www.wisdomsmsproject.ui.fragment.ConversationFragment;
import com.queqianme.www.wisdomsmsproject.ui.fragment.GroupFragment;
import com.queqianme.www.wisdomsmsproject.ui.fragment.SearchFragment;
import com.queqianme.www.wisdomsmsproject.utils.InputUtils;

import java.util.ArrayList;

/**
 * Created by liupuyan on 2017/11/7.
 */

public class MainActivity extends BaseActivity implements View.OnClickListener {

    private ViewPager vp_page;
    private LinearLayout ll_tab_conversation;
    private LinearLayout ll_tab_group;
    private LinearLayout ll_tab_search;
    private ArrayList<Fragment> fragments;
    private MainPagerAdater mainPagerAdater;
    private TextView txt_tab_conversation;
    private TextView txt_tab_group;
    private TextView txt_tab_search;

    private int conversationIndex;
    private int groupIndex;
    private int searchIndex;
    private View v_indicate_line;

    @Override
    public void initView() {
        setContentView(R.layout.activity_main);

        // 拿到布局文件中的组件
        vp_page = (ViewPager) findViewById(R.id.vp_page);

        ll_tab_conversation = (LinearLayout) findViewById(R.id.ll_tab_conversation);
        ll_tab_group = (LinearLayout) findViewById(R.id.ll_tab_group);
        ll_tab_search = (LinearLayout) findViewById(R.id.ll_tab_search);

        txt_tab_conversation = (TextView) findViewById(R.id.txt_tab_conversation);
        txt_tab_group = (TextView) findViewById(R.id.txt_tab_group);
        txt_tab_search = (TextView) findViewById(R.id.txt_tab_search);

        v_indicate_line = findViewById(R.id.v_indicate_line);
    }

    @Override
    public void initTitleBar() {

    }

    @Override
    public void initListener() {
        vp_page.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {

            /**
             * 滑动过程不断调用
             * 如果滑动过程中出现两个界面，position是前一个的索引
             * @param position
             * @param positionOffset
             * @param positionOffsetPixels
             */
            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                // 计算红线位移的距离
                int distance = positionOffsetPixels / 3;
                // 持续时间为0，立即生效
                v_indicate_line.animate().translationX(distance + v_indicate_line.getWidth() * position).setDuration(0);
            }

            /**
             * 切换完成后调用，传入的参数是切换后的界面的索引
             * @param position
             */
            @Override
            public void onPageSelected(int position) {
                textLightAndScale();
            }

            @Override
            public void onPageScrollStateChanged(int state) {
                // 滑动键盘消失
                InputUtils.hideInput(MainActivity.this);
            }
        });

        ll_tab_conversation.setOnClickListener(this);
        ll_tab_group.setOnClickListener(this);
        ll_tab_search.setOnClickListener(this);
    }

    @Override
    public void initData() {
        fragments = new ArrayList<>();
        // 创建Fragment对象，存入集合
        ConversationFragment conversationFragment = new ConversationFragment();
        GroupFragment groupFragment = new GroupFragment();
        SearchFragment searchFragment = new SearchFragment();
        fragments.add(conversationFragment);
        conversationIndex = fragments.size() - 1;
        fragments.add(groupFragment);
        groupIndex = fragments.size() - 1;
        fragments.add(searchFragment);
        searchIndex = fragments.size() - 1;

        mainPagerAdater = new MainPagerAdater(getSupportFragmentManager(), fragments);
        vp_page.setAdapter(mainPagerAdater);

        setIndicateLineWidth();

        textLightAndScale();
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.ll_tab_conversation:
                vp_page.setCurrentItem(conversationIndex);
                break;
            case R.id.ll_tab_group:
                vp_page.setCurrentItem(groupIndex);
                break;
            case R.id.ll_tab_search:
                vp_page.setCurrentItem(searchIndex);
                break;
        }
    }

    /**
     * 改变选项卡的文本的颜色和大小
     */
    private void textLightAndScale() {
        // 获取当前显示的界面的索引
        int item = vp_page.getCurrentItem();
        // 根据viewpager的界面索引决定选项卡颜色
        txt_tab_conversation.setTextColor(item == conversationIndex ? Color.WHITE : 0xcc666666);
        txt_tab_group.setTextColor(item == groupIndex ? Color.WHITE : 0xcc666666);
        txt_tab_search.setTextColor(item == searchIndex ? Color.WHITE : 0xcc666666);

        // 改变宽度至指定比例
        txt_tab_conversation.animate().scaleX(item == conversationIndex ? 1.2f : 1).setDuration(200);
        txt_tab_group.animate().scaleX(item == groupIndex ? 1.2f : 1).setDuration(200);
        txt_tab_search.animate().scaleX(item == searchIndex ? 1.2f : 1).setDuration(200);
        txt_tab_conversation.animate().scaleY(item == conversationIndex ? 1.2f : 1).setDuration(200);
        txt_tab_group.animate().scaleY(item == groupIndex ? 1.2f : 1).setDuration(200);
        txt_tab_search.animate().scaleY(item == searchIndex ? 1.2f : 1).setDuration(200);
    }

    /**
     * 设置红线宽度为屏幕的1/3
     */
    private void setIndicateLineWidth() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        v_indicate_line.getLayoutParams().width = point.x / 3;
    }
}
