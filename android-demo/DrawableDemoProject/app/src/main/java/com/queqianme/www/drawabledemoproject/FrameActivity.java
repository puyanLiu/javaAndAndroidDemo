package com.queqianme.www.drawabledemoproject;

import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

/**
 * Created by liupuyan on 2017/12/1.
 *
 * 帧动画 是通过连续播放图片来模拟动画效果
 */
public class FrameActivity extends AppCompatActivity implements View.OnClickListener {

    private Button btn_start;
    private Button btn_end;
    private ImageView img_pic;
    private AnimationDrawable animationDrawable;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_frame);

        bindViews();
    }

    // 对触摸事件中按下的事件处理

    private void bindViews() {
        btn_start = (Button) findViewById(R.id.btn_start);
        btn_end = (Button) findViewById(R.id.btn_end);
        img_pic = (ImageView) findViewById(R.id.img_pic);
        btn_start.setOnClickListener(this);
        btn_end.setOnClickListener(this);

        animationDrawable = (AnimationDrawable) img_pic.getDrawable();
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_start:
                animationDrawable.start();
                break;
            case R.id.btn_end:
                animationDrawable.stop();
                break;
        }
    }
}