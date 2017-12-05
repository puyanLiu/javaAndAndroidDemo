package com.queqianme.www.circleanimationproject;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Property;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/**
 * Created by liupuyan on 2017/11/29.
 */

public class CircleRotateDrawable extends Drawable implements Animatable {
    /**
     * 绘制圆弧起始位置角度的动画，这样该圆弧是打圈转的动画
     */
    private static final Interpolator ANGLE_INTERPOLATOR = new LinearInterpolator();
    /**
     * 圆弧起始位置动画的间隔，也就是多少毫秒圆弧转一圈，可以把该值扩大10倍来查看动画的慢动作
     */
    private static final int ANGLE_ANIMATOR_DURATION = 20000;
    /**
     * 圆弧的最下臂长是多少度
     */
    private static final int MIN_SWEEP_ANGLE = 30;
    private final RectF fBounds = new RectF();
    private Paint mPaint;
    /**
     * 臂长的动画对象
     */
    private ObjectAnimator mObjectAnimatorAngle;
    /**
     * 每次臂长增加 、减少 转换的时候， 圆弧起始位置的偏移量会增加 2 倍的最小臂长
     */
    private float mCurrentGlobalAngleOffset;
    private float mCurrentGlobalAngle;
    private float mCurrentSweepAngle;
    private float mBorderWidth;
    private boolean mRunning;
    private boolean isRotate;
    private float angle;

    public CircleRotateDrawable(int color, float borderWidth) {
        mBorderWidth = borderWidth;
        mPaint = new Paint();
        mPaint.setAntiAlias(true);
        mPaint.setStyle(Paint.Style.STROKE);
        mPaint.setStrokeWidth(borderWidth);
        mPaint.setColor(color);

        mCurrentGlobalAngle = -75;
        angle = 10;
        isRotate = false;

        setupAnimations();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        if (isRotate) {
            float startAngle = mCurrentGlobalAngle - mCurrentGlobalAngleOffset;
            float sweepAngle = mCurrentSweepAngle;
            startAngle = startAngle + sweepAngle;
            sweepAngle = 360 - sweepAngle - MIN_SWEEP_ANGLE;
            canvas.drawArc(fBounds, startAngle, sweepAngle, false, mPaint);
        } else {
            float startAngle1 = -75;
//            angle += 1;
            float sweepAngle1 = angle;
            canvas.drawArc(fBounds, startAngle1, sweepAngle1, false, mPaint);
            if (angle >= 330) {
                isRotate = true;
            }
        }
    }

    public void setPercent(int value) {
        angle = value;
    }

    @Override
    public void setAlpha(int alpha) {
        mPaint.setAlpha(alpha);
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        mPaint.setColorFilter(colorFilter);
    }

    @Override
    public int getOpacity() {
        return PixelFormat.TRANSPARENT;
    }

    @Override
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        fBounds.left = bounds.left + mBorderWidth / 2f + .5f;
        fBounds.right = bounds.right - mBorderWidth / 2f - .5f;
        fBounds.top = bounds.top + mBorderWidth / 2f + .5f;
        fBounds.bottom = bounds.bottom - mBorderWidth / 2f - .5f;
    }


    private Property<CircleRotateDrawable, Float> mAngleProperty = new Property<CircleRotateDrawable, Float>(Float.class, "angle") {
        @Override
        public Float get(CircleRotateDrawable object) {
            return object.getCurrentGlobalAngle();
        }
        @Override
        public void set(CircleRotateDrawable object, Float value) {
            System.out.println("------------------------" + value);
            object.setCurrentGlobalAngle(value);
        }
    };
    private void setupAnimations() {
        mObjectAnimatorAngle = ObjectAnimator.ofFloat(this, mAngleProperty, 360f);
        mObjectAnimatorAngle.setInterpolator(ANGLE_INTERPOLATOR);
        mObjectAnimatorAngle.setDuration(ANGLE_ANIMATOR_DURATION);
        mObjectAnimatorAngle.setRepeatMode(ValueAnimator.RESTART);
        mObjectAnimatorAngle.setRepeatCount(ValueAnimator.INFINITE);
    }
    @Override
    public void start() {
        if (isRunning()) {
            return;
        }
        mRunning = true;
        // 为了方便测试，可以注释掉下面两个动画中的一个，来
        //分别查看每个独立的动画是如何运动的
        mObjectAnimatorAngle.start();
        invalidateSelf();
    }
    @Override
    public void stop() {
        if (!isRunning()) {
            return;
        }
        mRunning = false;
        mObjectAnimatorAngle.cancel();
        invalidateSelf();
    }
    @Override
    public boolean isRunning() {
        return mRunning;
    }
    public void setCurrentGlobalAngle(float currentGlobalAngle) {
        mCurrentGlobalAngle = currentGlobalAngle;
        invalidateSelf();
    }
    public float getCurrentGlobalAngle() {
        return mCurrentGlobalAngle;
    }
    public void setCurrentSweepAngle(float currentSweepAngle) {
        mCurrentSweepAngle = currentSweepAngle;
        invalidateSelf();
    }
    public float getCurrentSweepAngle() {
        return mCurrentSweepAngle;
    }
}
