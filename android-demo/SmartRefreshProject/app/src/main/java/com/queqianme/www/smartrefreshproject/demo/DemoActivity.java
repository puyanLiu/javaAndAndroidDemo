package com.queqianme.www.smartrefreshproject.demo;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import com.queqianme.www.refresh_layout.SmartRefreshLayout;
import com.queqianme.www.refresh_layout.api.DefaultRefreshFooterCreater;
import com.queqianme.www.refresh_layout.api.DefaultRefreshHeaderCreater;
import com.queqianme.www.refresh_layout.api.RefreshFooter;
import com.queqianme.www.refresh_layout.api.RefreshHeader;
import com.queqianme.www.refresh_layout.api.RefreshLayout;
import com.queqianme.www.refresh_layout.footer.ClassicsFooter;
import com.queqianme.www.refresh_layout.header.ClassicsHeader;
import com.queqianme.www.smartrefreshproject.R;

/**
 * Created by liupuyan on 2017/11/29.
 */

public class DemoActivity extends AppCompatActivity {

    // 全局设置
    // static 代码段可以防止内存泄露
    static {
        //设置全局的Header构建器
        SmartRefreshLayout.setDefaultRefreshHeaderCreater(new DefaultRefreshHeaderCreater() {
            @Override
            public RefreshHeader createRefreshHeader(Context context, RefreshLayout layout) {
                layout.setPrimaryColorsId(R.color.colorPrimary, android.R.color.white);//全局设置主题颜色
                return new ClassicsHeader(context);//.setTimeFormat(new DynamicTimeFormat("更新于 %s"));//指定为经典Header，默认是 贝塞尔雷达Header
            }
        });
        //设置全局的Footer构建器
        SmartRefreshLayout.setDefaultRefreshFooterCreater(new DefaultRefreshFooterCreater() {
            @Override
            public RefreshFooter createRefreshFooter(Context context, RefreshLayout layout) {
                //指定为经典Footer，默认是 BallPulseFooter
                return new ClassicsFooter(context).setDrawableSize(20);
            }
        });
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_a_demo);

    }
}
