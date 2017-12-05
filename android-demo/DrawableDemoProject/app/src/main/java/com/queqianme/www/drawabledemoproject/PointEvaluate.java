package com.queqianme.www.drawabledemoproject;

import android.animation.TypeEvaluator;

/**
 * Created by liupuyan on 2017/12/5.
 *
 *  TypeEvaluator 告诉动画系统如何从初始值过度到结束值
 *  evaluate()方法当中传入了三个参数，
 *      第一个参数fraction非常重要，这个参数用于表示动画的完成度的，我们应该根据它来计算当前动画的值应该是多少，
 *      第二第三个参数分别表示动画的初始值和结束值
 *
 *
 *  ValueAnimator中有一个ofObject()方法，是用于对任意对象进行动画操作的。
 *  但是相比于浮点型或整型数据，对象的动画操作明显要更复杂一些，因为系统将完全无法知道如何从初始对象过度到结束对象
 *  因此这个时候我们就需要实现一个自己的TypeEvaluator来告知系统如何进行过度
 */

public class PointEvaluate implements TypeEvaluator {
    /**
     * 将startValue和endValue强转成Point对象，然后同样根据fraction来计算当前动画的x和y的值，最后组装到一个新的Point对象当中并返回
     * @param fraction
     * @param startValue
     * @param endValue
     * @return
     */
    @Override
    public Object evaluate(float fraction, Object startValue, Object endValue) {
        Point startPoint = (Point) startValue;
        Point endPoint = (Point) endValue;
        float x = startPoint.getX() + fraction * (endPoint.getX() - startPoint.getX());
        float y = startPoint.getY() + fraction * (endPoint.getY() - startPoint.getY());
        Point point = new Point(x, y);
        return point;
    }
}
