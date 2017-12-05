package com.queqianme.www.drawabledemoproject;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.animation.BounceInterpolator;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/12/4.
 *
 * 属性动画（Property Animation）
 * Animation一般动画就是我们前面学的帧动画和补间动画！
 * Animator则是属性动画！
 *
 *
 * ValueAnimator
 * 属性动画的运行机制是通过不断地对值进行操作来实现的，而初始值和结束值之间的动画过渡就是由ValueAnimator这个类来负责计算的
 * ValueAnimator还负责管理动画的播放次数、播放模式、以及对动画设置监听器等
 *
 *
 * ObjectAnimator
 * 可以直接对任意对象的任意属性进行动画操作的
 * ObjectAnimator内部的工作机制是通过寻找特定属性的get和set方法，然后通过方法不断地对值进行改变，从而实现动画效果的
 *
 * AnimatorSet 组合动画
 * 这个类提供了一个play()方法，如果我们向这个方法中传入一个Animator对象(ValueAnimator或ObjectAnimator)将会返回一个AnimatorSet.Builder的实例，AnimatorSet.Builder中包括以下四个方法：
     after(Animator anim)   将现有动画插入到传入的动画之后执行
     after(long delay)   将现有动画延迟指定毫秒后执行
     before(Animator anim)   将现有动画插入到传入的动画之前执行
     with(Animator anim)   将现有动画和传入的动画同时执行
 *
 */
public class PropertyAnimationActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_property);

//        valueAnim();

//        objectAnim();

//        setAnim();

//        setAnimXml();

        viewPropertyAnim();
    }

    /**
     * ViewPropertyAnimator
     *
     * 提供了更加易懂、更加面向对象的API
     */
    private void viewPropertyAnim() {
        TextView txt_haha = (TextView) findViewById(R.id.txt_haha);
//        ObjectAnimator animator = ObjectAnimator.ofFloat(txt_haha, "alpha", 0f);
//        animator.setDuration(5000);
//        animator.start();

        // 通过使用ViewPropertyAnimator来实现同样的效果
        // animate()方法就是在Android 3.1系统上新增的一个方法，这个方法的返回值是一个ViewPropertyAnimator对象，也就是说拿到这个对象之后我们就可以调用它的各种方法来实现动画效果了，这里我们调用了alpha()方法并转入0，表示将当前的textview变成透明状态
//        txt_haha.animate().alpha(0f);
        // 动画一起执行
        txt_haha.animate().alpha(1f).x(300).y(300).setDuration(5000)
        .setInterpolator(new BounceInterpolator());
    }

    // 加载xml文件实现动画
    private void setAnimXml() {
        TextView txt_haha = (TextView) findViewById(R.id.txt_haha);
        // 调用AnimatorInflater的loadAnimator来将XML动画文件加载进来
        Animator animator = AnimatorInflater.loadAnimator(this, R.animator.animator_set);
        // 调用setTarget()方法将这个动画设置到某一个对象上面
        animator.setTarget(txt_haha);
        // 调用start()方法启动动画
        animator.start();
    }

    /**
     * 组合动画
     *
     */
    private void setAnim() {
        TextView txt_haha = (TextView) findViewById(R.id.txt_haha);
        // 让TextView先从屏幕外移动进屏幕，然后开始旋转360度，旋转的同时进行淡入淡出操作
        ObjectAnimator moveIn = ObjectAnimator.ofFloat(txt_haha, "translationX", -500f, 0f);
        ObjectAnimator rotate = ObjectAnimator.ofFloat(txt_haha, "rotation", 0f, 360f);
        ObjectAnimator fadeInOut = ObjectAnimator.ofFloat(txt_haha, "alpha", 1f, 0f, 1f);

        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(rotate).with(fadeInOut).after(moveIn);
        animatorSet.setDuration(5000);
        animatorSet.start();

        // 添加监听器
        animatorSet.addListener(new Animator.AnimatorListener() {
            // onAnimationStart()方法会在动画开始的时候调用
            @Override
            public void onAnimationStart(Animator animation) {

            }

            // onAnimationEnd()方法会在动画结束的时候调用
            @Override
            public void onAnimationEnd(Animator animation) {

            }

            // onAnimationCancel()方法会在动画被取消的时候调用
            @Override
            public void onAnimationCancel(Animator animation) {

            }

            // onAnimationRepeat()方法会在动画重复执行的时候调用
            @Override
            public void onAnimationRepeat(Animator animation) {

            }
        });

        animatorSet.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationStart(Animator animation) {
                super.onAnimationStart(animation);
            }
        });

    }

    /**
     * ObjectAnimator可以直接对任意对象的任意属性进行动画操作的
     *
     * ObjectAnimator内部的工作机制并不是直接对我们传入的属性名进行操作的，而是会去寻找这个属性名对应的get和set方法
     */
    private void objectAnim() {
        TextView txt_haha = (TextView) findViewById(R.id.txt_haha);
        // 一个TextView在5秒中内从常规变换成全透明，再从全透明变换成常规
//        ObjectAnimator animator = ObjectAnimator.ofFloat(txt_haha, "alpha", 1f, 0f, 1f);

        // 将TextView进行一次360度的旋转
//        ObjectAnimator animator = ObjectAnimator.ofFloat(txt_haha, "rotation", 0f, 360f);

        // 将TextView先向左移出屏幕，然后再移动回来
        // getTranslationX()方法来获取到当前TextView的translationX的位置
//        float curTranslationX = txt_haha.getTranslationX();
//        ObjectAnimator animator = ObjectAnimator.ofFloat(txt_haha, "translationX", curTranslationX, -500f, curTranslationX);

        // 将TextView在垂直方向上放大3倍再还原
        ObjectAnimator animator = ObjectAnimator.ofFloat(txt_haha, "scaleY", 1f, 3f, 1f);

        animator.setDuration(5000);
        animator.start();
    }

    /**
     * ValueAnimator只不过是对值进行了一个平滑的动画过渡
     */
    private void valueAnim() {
        // 将值从0平滑过渡到1，时长300毫秒
        ValueAnimator animator1 = ValueAnimator.ofFloat(0f, 1f);
        animator1.setDuration(300);
        // 监听器查看动画是否真正运行
        animator1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float currentValue = (float) animation.getAnimatedValue();
                System.out.println("1-------------" + currentValue);
            }
        });
        animator1.start();

        // ofFloat() 方法可以传入任意多个参数
        // 一个值在5秒过渡到5，再过渡到3，再过渡到10
        /**
         * TypeEvaluator 告诉动画系统如何从初始值过度到结束值
         *
         * ValueAnimator.ofFloat()方法就是实现了初始值与结束值之间的平滑过度,那么这个平滑过度是怎么做到的呢？
         * 其实就是系统内置了一个FloatEvaluator，它通过计算告知动画系统如何从初始值过度到结束值
         */
        ValueAnimator animator2 = ValueAnimator.ofFloat(0f, 5f, 3f, 10f);
        animator2.setDuration(50000);
        animator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float currentValue = (float) animation.getAnimatedValue();
                System.out.println("2-------------" + currentValue);
            }
        });
        animator2.start();

        // ofFloat() 小数位数的动画过渡
        // ofInt() 整数位数动画过渡
        /*
        * setStartDelay()方法来设置动画延迟播放的时间
        * setRepeatCount()和setRepeatMode()方法来设置动画循环播放的次数以及循环播放的模式
        * 循环模式包括RESTART和REVERSE两种，分别表示重新播放和倒序播放
        * */
    }
}