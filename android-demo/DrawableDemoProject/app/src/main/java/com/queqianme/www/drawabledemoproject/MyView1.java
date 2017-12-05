package com.queqianme.www.drawabledemoproject;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by liupuyan on 2017/12/1.
 */

public class MyView1 extends View {

    private Paint mPaint;

    public MyView1(Context context) {
        super(context);
        init();
    }

    public MyView1(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public MyView1(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        mPaint = new Paint();
        mPaint.setAntiAlias(true); // 抗锯齿
        mPaint.setColor(getResources().getColor(R.color.colorPrimary)); // 画笔颜色
//        mPaint.setStyle(Paint.Style.FILL); // 画笔风格
        mPaint.setStyle(Paint.Style.STROKE);
        mPaint.setTextSize(36); // 绘制文字大小，单位px
//        mPaint.setStrokeWidth(5); // 画笔粗细
        mPaint.setStrokeWidth(2);
    }

    // 重写该方法，在这里绘图
    @Override
    protected void onDraw(Canvas canvas) {
//        draw1(canvas);
        draw2(canvas);
    }

    // 自定义的图形
    private void draw2(Canvas canvas) {
        canvas.drawColor(getResources().getColor(R.color.colorGrey)); // 设置画布背景颜色
        canvas.translate(canvas.getWidth() / 2, 200); // 移动画纸的坐标点
        canvas.drawCircle(0, 0, 100,mPaint); // 画圆圈

        // 使用PATH绘制路径文字
        canvas.save();
        canvas.translate(-75, -75);
        Path path = new Path();
        path.addArc(new RectF(0, 0, 150, 150), -180, 180);
        Paint citePaint = new Paint(mPaint);
        citePaint.setTextSize(14);
        citePaint.setStrokeWidth(1);
        canvas.drawTextOnPath("绘制表盘~", path, 28, 0, citePaint);

        canvas.restore();

        Paint tmpPaint = new Paint(mPaint); // 小刻度画笔对象
        tmpPaint.setStrokeWidth(1);
        tmpPaint.setTextSize(10);

        float y = 100;
        int count = 60;
        for (int i = 0; i < count; i++) {
            if (i % 5 == 0) {
                canvas.drawLine(0, y,0, y + 12, mPaint);
                canvas.drawText(String.valueOf(i / 5 + 1), -4, y + 25, tmpPaint);
            } else {
                canvas.drawLine(0, y, 0, y + 5, tmpPaint);
            }
            canvas.rotate(360 / count, 0, 0); // 旋转画纸
        }

        // 绘制指针
        tmpPaint.setColor(Color.GRAY);
        tmpPaint.setStrokeWidth(4);
        canvas.drawCircle(0, 0, 7, tmpPaint);
        tmpPaint.setStyle(Paint.Style.FILL);
        tmpPaint.setColor(Color.YELLOW);
        canvas.drawCircle(0,0, 5, tmpPaint);
        canvas.drawLine(0, 10, 0, -65, mPaint);
    }

    // 绘制形状
    public void draw1(Canvas canvas) {
        canvas.drawColor(getResources().getColor(R.color.colorGrey)); // 设置画布背景颜色
        canvas.drawCircle(50, 50, 30, mPaint); // 画实心圆
        canvas.drawRect(80, 10, 130, 40, mPaint); // 画矩形
        canvas.drawBitmap(BitmapFactory.decodeResource(getResources(), R.mipmap.fly1), 0, 100, mPaint); // 绘制bitmap
        canvas.drawArc(new RectF(0, 150, 100, 250), 0, 90, true, mPaint); // 绘制弧形区域
        canvas.drawArc(new RectF(0, 150, 100, 250), 90, 90, false, mPaint); // 绘制弧形区域
        canvas.drawRoundRect(new RectF(150, 10, 300, 50), 15, 30, mPaint); // 画圆角矩形
        canvas.drawOval(new RectF(150, 80, 300, 130), mPaint); // 画椭圆

        // 绘制多边形
        Path path = new Path();
        path.moveTo(50, 300);
        path.lineTo(60,380);
        path.lineTo(100, 400);
        path.lineTo(130, 300);
        path.lineTo(150, 350);
        path.close();
        canvas.drawPath(path, mPaint);

        canvas.drawText("绘制文字", 0, 450, mPaint); // 绘制文字

        // 沿着某条Path来绘制文字
        canvas.drawTextOnPath("嘻哈嘻哈嘿🐯哈", path, 50, 50, mPaint);
    }
}
