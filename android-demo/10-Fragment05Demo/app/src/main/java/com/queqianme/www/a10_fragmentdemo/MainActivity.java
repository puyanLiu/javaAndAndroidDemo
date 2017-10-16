package com.queqianme.www.a10_fragmentdemo;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private TextView txt_title;
    private FrameLayout fl_content;
    private Context mContext;
    private ArrayList<DataModel> aList = null;
    private FragmentManager fManager = null;
    private long exitTime = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        bindViews();

        mContext = MainActivity.this;
        fManager = getSupportFragmentManager();

        aList = new ArrayList<>();
        for (int i = 0; i <= 20; i++) {
            DataModel model = new DataModel("新闻标题" + i, i + "新闻内容~~~~~~~~~~~~~~~~~~~~~");
            aList.add(model);
        }
        NewListFragment nFragment = new NewListFragment(fManager, aList);
        android.support.v4.app.FragmentTransaction ft = fManager.beginTransaction();
        ft.replace(R.id.fl_content, nFragment);
        ft.commit();
    }

    private void bindViews() {
        txt_title = (TextView)findViewById(R.id.txt_title);
        fl_content = (FrameLayout)findViewById(R.id.fl_content);
    }

    // 点击回退键的处理：判断Fragment栈中是否有Fragment
    // 没，双击退出程序，否则像是Toast提示
    // 有，popbackstack弹出栈
    @Override
    public void onBackPressed() {
        if (fManager.getBackStackEntryCount() == 0) {
            if ((System.currentTimeMillis() - exitTime) > 2000) {
                Toast.makeText(getApplicationContext(), "再按一次退出程序", Toast.LENGTH_LONG).show();
                exitTime = System.currentTimeMillis();
            } else {
                super.onBackPressed();
            }
        } else {
            fManager.popBackStack();
            txt_title.setText("新闻列表");
        }
    }
}
