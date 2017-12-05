package com.queqianme.www.smartrefreshproject.activity.using;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;

import com.queqianme.www.smartrefreshproject.R;
import com.queqianme.www.refresh_header.MaterialHeader;
import com.queqianme.www.refresh_layout.api.RefreshLayout;
import com.queqianme.www.refresh_layout.constant.RefreshState;
import com.queqianme.www.refresh_layout.constant.SpinnerStyle;
import com.queqianme.www.refresh_layout.footer.BallPulseFooter;
import com.queqianme.www.refresh_layout.listener.SimpleMultiPurposeListener;

/**
 * 在Java代码中指定Header和Footer
 */
public class AssignCodeUsingActivity extends AppCompatActivity {

    private static boolean isFirstEnter = true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_using_assign_code);

        final Toolbar toolbar = (Toolbar)findViewById(R.id.toolbar);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });


        final RefreshLayout refreshLayout = (RefreshLayout) findViewById(R.id.refreshLayout);
        //设置 Header 为 Material风格
        refreshLayout.setRefreshHeader(new MaterialHeader(this).setShowBezierWave(true));
        //设置 Footer 为 球脉冲
        refreshLayout.setRefreshFooter(new BallPulseFooter(this).setSpinnerStyle(SpinnerStyle.Scale));

        /**
         * 以下代码仅仅为了演示效果而已，不是必须的
         */
        //设置主题颜色
        refreshLayout.setPrimaryColorsId(R.color.colorPrimary, android.R.color.white);

        if (isFirstEnter) {
            isFirstEnter = false;
            //触发上啦加载
            refreshLayout.autoLoadmore();
            //通过多功能监听接口实现 在第一次加载完成之后 自动刷新
            refreshLayout.setOnMultiPurposeListener(new SimpleMultiPurposeListener(){
                @Override
                public void onStateChanged(RefreshLayout refreshLayout, RefreshState oldState, RefreshState newState) {
                    if (oldState == RefreshState.LoadFinish && newState == RefreshState.None) {
                        refreshLayout.autoRefresh();
                        refreshLayout.setOnMultiPurposeListener(null);
                    }
                }
            });
        }
    }

}
