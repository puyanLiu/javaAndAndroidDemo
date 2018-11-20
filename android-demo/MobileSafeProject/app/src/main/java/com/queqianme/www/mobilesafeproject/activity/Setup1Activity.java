package com.queqianme.www.mobilesafeproject.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

import com.queqianme.mobilesafe.app.R;
import com.queqianme.www.mobilesafeproject.utils.LogUtils;

/**
 * Created by liupuyan on 2017/10/28.
 *
 * 设置向导1
 */
public class Setup1Activity extends AppCompatActivity {

    private GestureDetector gestureDetector;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_setup1);

        gestureDetector = new GestureDetector(this, new GestureDetector.SimpleOnGestureListener(){
            /**
             * 滑动返回
             * @param e1 起点坐标
             * @param e2 终点坐标
             * @param velocityX 横向速度
             * @param velocityY 纵向速度
             * @return
             */
            @Override
            public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                // 滑动过慢
                if (velocityX < 100) {
                    return super.onFling(e1, e2, velocityX, velocityY);
                }

                // 滑动y轴过高
                if (e2.getRawY() - e1.getRawY() > 100) {
                    return super.onFling(e1, e2, velocityX, velocityY);
                }

                if (e2.getRawX() - e1.getRawX() > 10) {
                    finish();
                    overridePendingTransition(R.anim.anim_activity_previous_in, R.anim.anim_activity_previous_out);
                    return true;
                }

                return super.onFling(e1, e2, velocityX, velocityY);
            }
        });
    }

    /**
     * 下一步
     * @param v
     */
    public void btn_next(View v) {
        startActivity(new Intent(this, Setup2Activity.class));
        finish();

        overridePendingTransition(R.anim.anim_activity_in, R.anim.anim_activity_out);
    }

    /**
     * 手势滑动事件
     * @param event
     * @return
     */
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        gestureDetector.onTouchEvent(event);
        return super.onTouchEvent(event);
    }
}