package com.queqianme.www.smartrefreshproject.demo;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by liupuyan on 2017/11/29.
 */

public class CustomView extends View {
    private CircleRotateDrawable mDrawable;

    private Paint mPaint;

    public CustomView(Context context) {
        this(context, null);
    }
    public CustomView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public CustomView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mDrawable = new CircleRotateDrawable(Color.RED, 1);
        mDrawable.setCallback(this);

        mPaint = new Paint();
    }
    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == VISIBLE) {
            mDrawable.start();
        } else {
            mDrawable.stop();
        }

    }

    public void setPercent(float value) {
        mDrawable.setPercent(value);
        if (value == 0) {
            this.invalidate();
        }
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        mDrawable.setBounds(0, 0, w, h);
    }
    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        System.out.println("=========================================");
        mDrawable.draw(canvas);
//        float x = 1;
//        float y = 1;
//
//        RectF oval = new RectF( x, y,
//                getWidth() - x * 2, getHeight() - y * 2);
//
//        float startAngle = -75;
//        float endAngle = 330;
//
//        mPaint.setAntiAlias(true); // 取消锯齿
//        mPaint.setStyle(Paint.Style.STROKE);
//        mPaint.setStrokeWidth(1);
//        mPaint.setColor(Color.RED);
//
//        canvas.drawArc(oval, startAngle, endAngle, false, mPaint);
    }
    @Override
    protected boolean verifyDrawable(Drawable who) {
        return who == mDrawable || super.verifyDrawable(who);
    }
}
