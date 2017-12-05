package com.queqianme.www.drawabledemoproject;

import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/**
 * Created by liupuyan on 2017/12/1.
 */
public class Frame1Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        FrameLayout frameLayout = new FrameLayout(this);
        setContentView(frameLayout);

        final FrameImageView frameImageView = new FrameImageView(this);
        frameImageView.setBackgroundResource(R.drawable.anim_zhuan_gif);
        frameImageView.setVisibility(View.INVISIBLE);
        final AnimationDrawable anim = (AnimationDrawable) frameImageView.getBackground();
        frameImageView.setAnimationDrawable(anim);

        frameLayout.addView(frameImageView);

        frameLayout.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {

                // 设置按下时才产生动画
                if (event.getAction() == MotionEvent.ACTION_DOWN) {
                    anim.stop();

                    float x = event.getX();
                    float y = event.getY();

                    frameImageView.setLocation((int) y - 40, (int) x - 20);
                    frameImageView.setVisibility(View.VISIBLE);
                    anim.start();

                }

                return false;
            }
        });
    }
}