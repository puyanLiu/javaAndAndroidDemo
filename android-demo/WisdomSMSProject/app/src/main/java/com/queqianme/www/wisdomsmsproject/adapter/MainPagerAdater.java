package com.queqianme.www.wisdomsmsproject.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

import java.util.List;

/**
 * Created by liupuyan on 2017/11/7.
 */

public class MainPagerAdater extends FragmentPagerAdapter {

    List<Fragment> fragments;

    public MainPagerAdater(FragmentManager fm, List<Fragment> fragments) {
        super(fm);
        this.fragments = fragments;
    }

    /**
     * 返回的Fragment对象会作为viewpager的条目
     * @param position
     * @return
     */
    @Override
    public Fragment getItem(int position) {
        return fragments.get(position);
    }

    @Override
    public int getCount() {
        return fragments.size();
    }
}
