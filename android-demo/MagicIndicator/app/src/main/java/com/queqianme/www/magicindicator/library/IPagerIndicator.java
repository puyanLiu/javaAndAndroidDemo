package com.queqianme.www.magicindicator.library;

import java.util.List;

/**
 * Created by liupuyan on 2017/11/20.
 *
 * 抽象的viewpager指示器，适用于CommonNavigator
 */

public interface IPagerIndicator {
    void onPageScrolled(int position, float positionOffset, int positionOffsetPixels);

    void onPageSelected(int position);

    void onPageScrollStateChanged(int state);

    void onPositionDataProvide(List<PositionData> dataList);
}
