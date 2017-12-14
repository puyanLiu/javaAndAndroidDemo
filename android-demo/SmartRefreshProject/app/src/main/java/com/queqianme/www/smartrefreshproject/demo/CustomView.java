package com.queqianme.www.smartrefreshproject.demo;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by liupuyan on 2017/11/29.
 */

public class CustomView extends View {

    private Paint mPaint;
    private float endAngle;
    private float startAngle;

    public CustomView(Context context) {
        this(context, null);
    }
    public CustomView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public CustomView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

        mPaint = new Paint();
        mPaint.setAntiAlias(true);
        mPaint.setStyle(Paint.Style.STROKE);
        mPaint.setColor(Color.RED);
        mPaint.setStrokeWidth(1);

        startAngle = -75;
    }

    public void setPercent(float value) {
        System.out.println("----------------------" + value);
        if (value <= 1) {
            endAngle = 330 * value;
            this.invalidate();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        RectF oval = new RectF(mPaint.getStrokeWidth(), mPaint.getStrokeWidth(), getWidth() - 2 * mPaint.getStrokeWidth(), getHeight() - 2 * mPaint.getStrokeWidth());
        float startAngle = this.startAngle;
        float endAngle = this.endAngle;
        canvas.drawArc(oval, startAngle, endAngle, false, mPaint);
    }
}
