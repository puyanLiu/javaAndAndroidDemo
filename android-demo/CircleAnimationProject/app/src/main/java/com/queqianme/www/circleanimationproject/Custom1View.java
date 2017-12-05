package com.queqianme.www.circleanimationproject;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by liupuyan on 2017/11/29.
 */

public class Custom1View extends View {

    private CircleRotateDrawable mDrawable;

    public Custom1View(Context context) {
        this(context, null);
    }
    public Custom1View(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public Custom1View(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mDrawable = new CircleRotateDrawable(Color.RED, 2);
        mDrawable.setCallback(this);
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

    public void setPercent(int value) {
        mDrawable.setPercent(value);
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        mDrawable.setBounds(0, 0, w, h);
    }
    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        mDrawable.draw(canvas);
    }
    @Override
    protected boolean verifyDrawable(Drawable who) {
        return who == mDrawable || super.verifyDrawable(who);
    }
}
