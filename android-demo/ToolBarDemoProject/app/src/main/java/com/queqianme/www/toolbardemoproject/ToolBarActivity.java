package com.queqianme.www.toolbardemoproject;

import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.widget.Toast;

/**
 * Created by liupuyan on 2018/1/3.
 */
public class ToolBarActivity extends BaseActivity {

    private Toolbar toolbar;

    @Override
    public int getContentLayoutId() {
        return R.layout.activity_tool_bar;
    }

    @Override
    public void initData() {

        toolbar = (Toolbar)findViewById(R.id.toolbar);

        toolbarMenu();
    }

    private void toolbarDemo() {
        // 设置导航栏图片
        toolbar.setNavigationIcon(R.mipmap.ic_drawer_home);
        // 设置app logo
        toolbar.setLogo(R.mipmap.ic_launcher);
        // 设置主标题
        toolbar.setTitle("主标题");
        // 设置子标题
        toolbar.setSubtitle("子标题");
    }

    private void toolbarMenu() {
        // 设置右上角的填充菜单
        toolbar.inflateMenu(R.menu.base_toolbar_menu);
        toolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem item) {
                int menuItemId = item.getItemId();
                switch (menuItemId) {
                    case R.id.action_search:
                        Toast.makeText(ToolBarActivity.this, "查找", Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.action_notification:
                        Toast.makeText(ToolBarActivity.this, "通知", Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.action_item1:
                        Toast.makeText(ToolBarActivity.this, "Item 1", Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.action_item2:
                        Toast.makeText(ToolBarActivity.this, "Item 2", Toast.LENGTH_SHORT).show();
                        break;
                }
                return true;
            }
        });
    }
}