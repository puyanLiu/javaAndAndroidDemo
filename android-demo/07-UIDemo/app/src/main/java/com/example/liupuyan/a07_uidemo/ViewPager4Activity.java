package com.example.liupuyan.a07_uidemo;

import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by liupuyan on 2017/10/9.
 */

public class ViewPager4Activity extends AppCompatActivity implements View.OnClickListener, ViewPager.OnPageChangeListener {

    private ViewPager viewpage1;
    private TextView tv_one;
    private TextView tv_two;
    private TextView tv_three;
    private ImageView img_cursor;

    private ArrayList<View> aList;
    private int offset = 0; // 移动条图片的偏移量
    private int currIndex = 0; // 当前页面的编号
    private int bmpWidth; // 移动条图片的长度

    private ViewPagerAdapter2 mAdapter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_viewpager4);

        initViews();
    }

    private void initViews() {
        viewpage1 = (ViewPager)findViewById(R.id.viewpager1);
        tv_one = (TextView)findViewById(R.id.tv_one);
        tv_two = (TextView)findViewById(R.id.tv_two);
        tv_three = (TextView)findViewById(R.id.tv_three);
        img_cursor = (ImageView)findViewById(R.id.img_cursor);

        tv_one.setOnClickListener(this);
        tv_two.setOnClickListener(this);
        tv_three.setOnClickListener(this);

        viewpage1.addOnPageChangeListener(this);

        // 下划线动画的相关设置
        bmpWidth = BitmapFactory.decodeResource(getResources(), R.mipmap.line).getWidth();// 获取图片宽度
        DisplayMetrics dm = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(dm);
        int screenW = dm.widthPixels;// 获取分辨率宽度
        offset = (screenW / 3 - bmpWidth) / 2;// 计算偏移量
        Matrix matrix = new Matrix();
        matrix.postTranslate(offset, 0);
        img_cursor.setImageMatrix(matrix);// 设置动画初始位置

        //往ViewPager填充View，同时设置点击事件与页面切换事件
        aList = new ArrayList<View>();
        LayoutInflater mInflater = getLayoutInflater();
        aList.add(mInflater.inflate(R.layout.view_one, null, false));
        aList.add(mInflater.inflate(R.layout.view_two, null, false));
        aList.add(mInflater.inflate(R.layout.view_three, null, false));
        viewpage1.setAdapter(new ViewPagerAdapter(aList));
        viewpage1.setCurrentItem(0);          //设置ViewPager当前页，从0开始算

    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

    }

    @Override
    public void onPageSelected(int position) {
        Animation animation = new TranslateAnimation((offset * 2 + bmpWidth) * currIndex, (offset * 2 + bmpWidth) * position, 0, 0);
        currIndex = position;
        animation.setFillAfter(true);// true表示图片停在动画结束位置
        animation.setDuration(300); //设置动画时间为300毫秒
        img_cursor.startAnimation(animation);//开始动画
    }

    @Override
    public void onPageScrollStateChanged(int state) {

    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_one:
                viewpage1.setCurrentItem(0);
                break;
            case R.id.tv_two:
                viewpage1.setCurrentItem(1);
                break;
            case R.id.tv_three:
                viewpage1.setCurrentItem(2);
                break;
        }
    }
}
