package com.queqianme.www.circleanimationproject;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by liupuyan on 2017/11/28.
 */

public class Custom2View extends View {

    private Paint mPaint;

    public Custom2View(Context context) {
        this(context, null);
    }
    public Custom2View(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public Custom2View(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

        mPaint = new Paint();
    }
    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
    }
    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);

    }
    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        float x = (getWidth() - getHeight() / 2) / 2;
        float y = getHeight() / 4;

        RectF oval = new RectF( x, y,
                getWidth() - x, getHeight() - y);

        float startAngle = -75;
        float endAngle = 330;

        mPaint.setAntiAlias(true); // 取消锯齿
        mPaint.setStyle(Paint.Style.STROKE);
        mPaint.setStrokeWidth(1);
        mPaint.setColor(Color.RED);

        canvas.drawArc(oval, startAngle, endAngle, false, mPaint);
    }

}
