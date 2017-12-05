package com.queqianme.www.drawabledemoproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;

/**
 * Created by liupuyan on 2017/12/4.
 *
 * 补间动画 只需指定动画开始，以及动画结束"关键帧"， 而动画变化的"中间帧"则由系统计算并补齐
 *
 *
 * 补间动画的分类和Interpolator
     AlphaAnimation：透明度渐变效果，创建时许指定开始以及结束透明度，还有动画的持续 时间，透明度的变化范围(0,1)，0是完全透明，1是完全不透明；对应<alpha/>标签！
     ScaleAnimation：缩放渐变效果，创建时需指定开始以及结束的缩放比，以及缩放参考点， 还有动画的持续时间；对应<scale/>标签！
     TranslateAnimation：位移渐变效果，创建时指定起始以及结束位置，并指定动画的持续 时间即可；对应<translate/>标签！
     RotateAnimation：旋转渐变效果，创建时指定动画起始以及结束的旋转角度，以及动画 持续时间和旋转的轴心；对应<rotate/>标签
     AnimationSet：组合渐变，就是前面多种渐变的组合，对应<set/>标签
 *
 *
 * Interpolator
 * 用来控制动画的变化速度，可以理解成动画渲染器，当然我们也可以自己实现Interpolator 接口，自行来控制动画的变化速度，而Android中已经为我们提供了五个可供选择的实现类：
     LinearInterpolator：动画以均匀的速度改变
     AccelerateInterpolator：在动画开始的地方改变速度较慢，然后开始加速
     AccelerateDecelerateInterpolator：在动画开始、结束的地方改变速度较慢，中间时加速（默认）
     CycleInterpolator：动画循环播放特定次数，变化速度按正弦曲线改变： Math.sin(2 * mCycles * Math.PI * input)
     DecelerateInterpolator：在动画开始的地方改变速度较快，然后开始减速
     AnticipateInterpolator：反向，先向相反方向改变一段再加速播放
     AnticipateOvershootInterpolator：开始的时候向后然后向前甩一定值后返回最后的值
     BounceInterpolator： 跳跃，快到目的值时值会跳跃，如目的值100，后面的值可能依次为85，77，70，80，90，100
     OvershottInterpolator：回弹，最后超出目的值然后缓慢改变到目的值
 而这个东东，我们一般是在写动画xml文件时会用到，属性是：android:interpolator，
 而上面对应的值是：@android:anim/linear_interpolator，其实就是驼峰命名法变下划线而已
 AccelerateDecelerateInterpolator对应：@android:anim/accelerate_decelerate_interpolator
 *
 *
 * 动画状态的监听
 * 动画的执行状态进行监听，调用动画对象的
     setAnimationListener(new AnimationListener())方法，重写下面的三个方法：
     onAnimationStart()：动画开始
     onAnimtaionRepeat()：动画重复
     onAnimationEnd()：动画结束
 *
 *
 * 为View动态设置动画效果
 * 先调用AnimationUtils.loadAnimation(动画xml文件)，然后View控件调用startAnimation(anim) 开始动画~这是静态加载的方式，
 * 当然你也可以直接创建一个动画对象，用Java代码完成设置，再调用 startAnimation开启动画
 *
 *
 *
 */

public class TweenActivity extends AppCompatActivity implements View.OnClickListener {

    private Button btn_scale;
    private Button btn_rotate;
    private Button btn_set;
    private Button btn_tran;
    private ImageView img_show;
    private Button btn_alpha;
    private Animation animation = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tween);

        bindViews();
    }

    private void bindViews() {
        btn_scale = (Button) findViewById(R.id.btn_scale);
        btn_rotate = (Button) findViewById(R.id.btn_rotate);
        btn_set = (Button) findViewById(R.id.btn_set);
        btn_tran = (Button) findViewById(R.id.btn_tran);
        btn_alpha = (Button) findViewById(R.id.btn_alpha);
        img_show = (ImageView) findViewById(R.id.img_show);

        btn_scale.setOnClickListener(this);
        btn_rotate.setOnClickListener(this);
        btn_set.setOnClickListener(this);
        btn_tran.setOnClickListener(this);
        btn_alpha.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        // AnimationUtils.loadAnimation() 加载动画
        switch (v.getId()) {
            case R.id.btn_alpha:
                animation = AnimationUtils.loadAnimation(this, R.anim.anim_alpha);
                img_show.startAnimation(animation);
                break;
            case R.id.btn_scale:
                animation = AnimationUtils.loadAnimation(this, R.anim.anim_scale);
                img_show.startAnimation(animation);
                break;
            case R.id.btn_tran:
                animation = AnimationUtils.loadAnimation(this, R.anim.anim_translate);
                img_show.startAnimation(animation);
                break;
            case R.id.btn_rotate:
                animation = AnimationUtils.loadAnimation(this, R.anim.anim_rotate);
                img_show.startAnimation(animation);
                break;
            case R.id.btn_set:
                animation = AnimationUtils.loadAnimation(this, R.anim.anim_set);
                img_show.startAnimation(animation);
                break;
        }
    }
}