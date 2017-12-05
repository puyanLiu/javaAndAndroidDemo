package com.queqianme.www.drawabledemoproject;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.view.View;

import java.lang.reflect.Field;

/**
 * Created by liupuyan on 2017/12/1.
 *
 * 通过反射获得当前播放的帧，然后是否为最后一帧，是的话隐藏控件
 */

public class FrameImageView extends AppCompatImageView {

    private AnimationDrawable animationDrawable;

    public FrameImageView(Context context) {
        super(context);
    }

    public FrameImageView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public FrameImageView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setAnimationDrawable(AnimationDrawable animationDrawable) {
        this.animationDrawable = animationDrawable;
    }

    public void setLocation(int top, int left) {
        this.setFrame(left, top, left + 100, top + 100);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        try {
            // 反射调用AnimationDrawable的mCurFrame值
            Field field = AnimationDrawable.class.getDeclaredField("mCurFrame");
            field.setAccessible(true);
            int curFrame = field.getInt(animationDrawable); // 获取anim动画的当前帧
            if (curFrame == animationDrawable.getNumberOfFrames() - 1) {
                // 到了最后一帧
                setVisibility(View.INVISIBLE);
            }
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

    }
}
