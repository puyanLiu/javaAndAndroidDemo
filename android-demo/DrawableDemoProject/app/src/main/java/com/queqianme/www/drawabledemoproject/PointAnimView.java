package com.queqianme.www.drawabledemoproject;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by liupuyan on 2017/12/5.
 */

public class PointAnimView extends View {

    public static final float RADIUS = 50f;

    private Point currentPoint;
    private Paint mPaint;

    // 更改颜色，color属性设置为字符串类型，使用#RRGGBB这种格式来表示颜色值
    private String color;

    public PointAnimView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        mPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        mPaint.setColor(Color.BLUE);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (currentPoint == null) {
            currentPoint = new Point(RADIUS, RADIUS);
            drawCircle(canvas);
//            startAnimation();
            startAnimation1();
        } else {
            drawCircle(canvas);
        }
    }

    private void drawCircle(Canvas canvas) {
        float x = currentPoint.getX();
        float y = currentPoint.getY();
        canvas.drawCircle(x, y, RADIUS, mPaint);
    }

    // 垂直掉落的效果
    private void startAnimation1() {
        Point startPoint = new Point(getWidth() / 2, RADIUS);
        Point endPoint = new Point(getWidth() / 2, getHeight() - RADIUS);
        ValueAnimator pointAnimator = ValueAnimator.ofObject(new PointEvaluate(), startPoint, endPoint);
        // 通过监听器对动画的过程进行了监听，每当Point值有改变的时候都会回调onAnimationUpdate()方法
        pointAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                // 更新位置
                currentPoint = (Point) animation.getAnimatedValue();
                // onDraw()方法就会重新调用
                invalidate();
            }
        });
        // 更改小球的降落速度，默认先加速后减速，改为速度越来越快
        // AccelerateInterpolator参数用来控制加速度
//        pointAnimator.setInterpolator(new AccelerateInterpolator(2f));

        // 小球撞击到地面之后应该要反弹起来，然后再次落下，接着再反弹起来，又再次落下，以此反复，最后静止
        // BounceInterpolator就是一种可以模拟物理规律，实现反复弹起效果的Interpolator
//        pointAnimator.setInterpolator(new BounceInterpolator());

        // 自定义 先减速后加速
        pointAnimator.setInterpolator(new DecelerateAccelerateInterpolator());

        pointAnimator.setDuration(3000);
        pointAnimator.start();
    }

    /*
    *
    public interface TimeInterpolator {

        getInterpolation()方法中接收一个input参数，这个参数的值会随着动画的运行而不断变化，不过它的变化是非常有规律的，
        就是根据设定的动画时长匀速增加，变化范围是0到1。
        也就是说当动画一开始的时候input的值是0，到动画结束的时候input的值是1，而中间的值则是随着动画运行的时长在0到1之间变化的

        input的值决定了fraction的值
        input的值是由系统经过计算后传入到getInterpolation()方法中的，然后我们可以自己实现getInterpolation()方法中的算法，根据input的值来计算出一个返回值，而这个返回值就是fraction了

        float getInterpolation(float input);
    }
    * */

    private void startAnimation() {
        Point startPoint = new Point(RADIUS, RADIUS);
        Point endPoint = new Point(getWidth() - RADIUS, getHeight() - RADIUS);
        ValueAnimator pointAnimator = ValueAnimator.ofObject(new PointEvaluate(), startPoint, endPoint);
        // 通过监听器对动画的过程进行了监听，每当Point值有改变的时候都会回调onAnimationUpdate()方法
        pointAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                // 更新位置
                currentPoint = (Point) animation.getAnimatedValue();
                // onDraw()方法就会重新调用
                invalidate();
            }
        });

        // 这段代码本身就是在MyAnimView当中执行的，因此ObjectAnimator.ofObject()的第一个参数直接传this就可以了
        ObjectAnimator colorAnimator = ObjectAnimator.ofObject(this, "color", new ColorEvaluator(), "#0000FF", "#FF0000");

        AnimatorSet set = new AnimatorSet();
        set.play(pointAnimator).with(colorAnimator);
        set.setDuration(5000);
        set.start();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
        // 将画笔的颜色设置成方法参数传入的颜色，然后调用了invalidate()方法
        mPaint.setColor(Color.parseColor(color));
        invalidate();
    }
}
