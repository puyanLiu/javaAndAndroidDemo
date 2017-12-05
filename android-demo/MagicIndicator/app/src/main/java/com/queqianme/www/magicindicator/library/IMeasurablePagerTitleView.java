package com.queqianme.www.magicindicator.library;

/**
 * Created by liupuyan on 2017/11/20.
 *
 * 可测量内容区域的指示器标题
 */

public interface IMeasurablePagerTitleView extends IPagerTitleView {
    int getContentLeft();

    int getContentTop();

    int getContentRight();

    int getContentBottom();
}
