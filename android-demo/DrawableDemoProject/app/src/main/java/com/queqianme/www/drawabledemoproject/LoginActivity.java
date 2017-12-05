package com.queqianme.www.drawabledemoproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;

/**
 * Created by liupuyan on 2017/12/4.
 */
public class LoginActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_login);

        final LinearLayout ll_start = (LinearLayout) findViewById(R.id.ll_start);

        // 设置动画，从自身位置的最下端向上滑动了自身的高度，持续时间500ms
        final TranslateAnimation translateAnimation = new TranslateAnimation(TranslateAnimation.RELATIVE_TO_SELF, 0, TranslateAnimation.RELATIVE_TO_SELF, 0,
                TranslateAnimation.RELATIVE_TO_SELF, 1, TranslateAnimation.RELATIVE_TO_SELF, 0);
        // 设置动画的过渡时间
        translateAnimation.setDuration(500l);
        ll_start.postDelayed(new Runnable() {
            @Override
            public void run() {
                ll_start.setVisibility(View.VISIBLE);
                ll_start.startAnimation(translateAnimation);
            }
        }, 2000);


    }
}