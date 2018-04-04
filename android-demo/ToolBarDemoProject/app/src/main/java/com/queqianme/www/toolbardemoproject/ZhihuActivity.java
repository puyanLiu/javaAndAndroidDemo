package com.queqianme.www.toolbardemoproject;

import android.graphics.Color;
import android.support.v7.widget.Toolbar;

/**
 * Created by liupuyan on 2018/1/3.
 */

public class ZhihuActivity extends BaseActivity {

    @Override
    public int getContentLayoutId() {
        return R.layout.zhihu_toolbar_menu;
    }

    @Override
    public void initData() {

        Toolbar toolbar = (Toolbar)findViewById(R.id.toolbar);
        toolbar.inflateMenu(R.menu.zhihu_toolbar_menu);

        toolbar.setNavigationIcon(R.mipmap.ic_drawer_home);
        toolbar.setTitle("首页");
        toolbar.setTitleTextColor(Color.RED);
    }
}
