package com.queqianme.www.statusbardemoproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

/**
 * Created by liupuyan on 2017/12/28.
 *
 * 系统的方式沉浸式状态栏
 */
public class StatusDemoActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

//        setContentView(R.layout.activity_status_demo);

//        // 当系统版本为4.4或者4.4以上时可以使用沉浸式状态栏
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
//            // 透明状态栏
//            getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
//
//            // 透明导航栏
//            getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
//        }

        //状态栏透明和间距处理
        StatusBarUtils.immersive(this);
//        StatusBarUtils.setPaddingSmart(this, toolbar);

//        TextView txt_content1 = (TextView) findViewById(R.id.txt_content1);
//        LinearLayout ll_content = (LinearLayout) findViewById(R.id.ll_content);
//        StatusBarUtils.setPaddingSmart(this, ll_content);


        View child = View.inflate(this, R.layout.activity_status_demo, null);
        setContentView(child);
        View root = child.findViewById(R.id.ll_content);
        StatusBarUtils.setPaddingSmart(this, root);

    }
}