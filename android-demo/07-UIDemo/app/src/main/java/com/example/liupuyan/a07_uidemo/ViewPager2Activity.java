package com.example.liupuyan.a07_uidemo;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;

import java.util.ArrayList;

/**
 * Created by liupuyan on 2017/10/9.
 */

public class ViewPager2Activity extends AppCompatActivity {
    private ViewPager viewpage1;
    private ArrayList<View> aList;
    private ArrayList<String> sList;
    private ViewPagerAdapter2 mAdapter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_viewpager2);

        viewpage1 = (ViewPager)findViewById(R.id.viewpager1);

        aList = new ArrayList<>();
        LayoutInflater li = getLayoutInflater();
        aList.add(li.inflate(R.layout.view_one, null, false));
        aList.add(li.inflate(R.layout.view_two, null, false));
        aList.add(li.inflate(R.layout.view_three, null, false));

        sList = new ArrayList<>();
        sList.add("第一个");
        sList.add("第二个");
        sList.add("第三个");

        mAdapter = new ViewPagerAdapter2(aList, sList);
        viewpage1.setAdapter(mAdapter);
    }
}
