package com.queqianme.www.smartrefreshproject.demo;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.queqianme.www.refresh_layout.api.RefreshHeader;
import com.queqianme.www.refresh_layout.api.RefreshKernel;
import com.queqianme.www.refresh_layout.api.RefreshLayout;
import com.queqianme.www.refresh_layout.constant.RefreshState;
import com.queqianme.www.refresh_layout.constant.SpinnerStyle;
import com.queqianme.www.refresh_layout.internal.ProgressDrawable;
import com.queqianme.www.refresh_layout.internal.pathview.PathsDrawable;
import com.queqianme.www.refresh_layout.util.DensityUtil;
import com.queqianme.www.smartrefreshproject.R;

/**
 * Created by liupuyan on 2017/11/29.
 */

public class DemoHeader extends LinearLayout implements RefreshHeader {

    public static String REFRESH_HEADER_PULLDOWN = "下拉可以刷新";
    public static String REFRESH_HEADER_REFRESHING = "正在刷新数据";
    public static String REFRESH_HEADER_LOADING = "正在加载数据...";
    public static String REFRESH_HEADER_RELEASE = "释放立即刷新";
    public static String REFRESH_HEADER_FINISH = "刷新数据完成";
    public static String REFRESH_HEADER_FAILED = "刷新失败";

    protected TextView mTitleText;
    protected CustomView mProgressView;
    protected SharedPreferences mShared;
    protected RefreshKernel mRefreshKernel;
    protected PathsDrawable mArrowDrawable;
    protected ProgressDrawable mProgressDrawable;
    protected SpinnerStyle mSpinnerStyle = SpinnerStyle.Translate;
    protected int mFinishDuration = 200;
    protected int mBackgroundColor;
    protected int mPaddingTop = 20;
    protected int mPaddingBottom = 20;

    public DemoHeader(Context context) {
        super(context);
        this.initView(context, null);
    }

    public DemoHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.initView(context, attrs);
    }

    public DemoHeader(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.initView(context, attrs);
    }

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    public DemoHeader(Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.initView(context, attrs);
    }

    private void initView(Context context, AttributeSet attrs) {
        DensityUtil density = new DensityUtil();

        setGravity(Gravity.CENTER_HORIZONTAL);
        setOrientation(VERTICAL);

        ImageView mHeaderImageView = new ImageView(context);
        mHeaderImageView.setImageResource(R.mipmap.bg_pulltorefresh);

        LinearLayout.LayoutParams lp_headerImage = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        addView(mHeaderImageView, lp_headerImage);

        LinearLayout layout = new LinearLayout(context);
        layout.setId(android.R.id.widget_frame);
        layout.setGravity(Gravity.CENTER_VERTICAL);
        layout.setOrientation(LinearLayout.HORIZONTAL);
        layout.setBackgroundColor(Color.YELLOW);

        LinearLayout.LayoutParams lp_content = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp_content.setMargins(0, 19, 0, 0);
        addView(layout, lp_content);

        RelativeLayout rl_circle = new RelativeLayout(context);
        rl_circle.setClickable(false);
        RelativeLayout.LayoutParams rp_cirlce = new RelativeLayout.LayoutParams(30, 30);
        layout.addView(rl_circle, rp_cirlce);

        View v_square = new View(context);
        v_square.setBackgroundResource(R.drawable.demo_rectangle);
        v_square.setRotation(45);
        RelativeLayout.LayoutParams rp_square = new RelativeLayout.LayoutParams(10, 10);
        rp_square.addRule(RelativeLayout.CENTER_IN_PARENT);
        rl_circle.addView(v_square, rp_square);

        mProgressView = new CustomView(context);
        mProgressView.animate().setInterpolator(new LinearInterpolator());
        RelativeLayout.LayoutParams rp_progress = new RelativeLayout.LayoutParams(30, 30);
        rp_progress.addRule(RelativeLayout.CENTER_IN_PARENT);
        rl_circle.addView(mProgressView, rp_progress);

        mTitleText = new TextView(context);
        mTitleText.setText(REFRESH_HEADER_PULLDOWN);
        mTitleText.setTextColor(0xff666666);

        LinearLayout.LayoutParams lp_titleText = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp_titleText.setMargins(10, 0, 0, 0);
        layout.addView(mTitleText, lp_titleText);

    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY) {
            setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
        } else {
            setPadding(getPaddingLeft(), mPaddingTop, getPaddingRight(), mPaddingBottom);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void onInitialized(RefreshKernel kernel, int height, int extendHeight) {
        mRefreshKernel = kernel;
        mRefreshKernel.requestDrawBackgoundForHeader(mBackgroundColor);
    }

    @Override
    public boolean isSupportHorizontalDrag() {
        return false;
    }

    @Override
    public void onHorizontalDrag(float percentX, int offsetX, int offsetMax) {
    }

    @Override
    public void onPullingDown(float percent, int offset, int headHeight, int extendHeight) {
        System.out.println("onPullingDown-------------------------" + percent);
        mProgressView.setPercent(percent);
    }

    @Override
    public void onReleasing(float percent, int offset, int headHeight, int extendHeight) {

    }

    @Override
    public void onRefreshReleased(RefreshLayout layout, int headerHeight, int extendHeight) {
        if (mProgressDrawable != null) {
            mProgressDrawable.start();
        } else {
//            Drawable drawable = mProgressView.getDrawable();
//            if (drawable instanceof Animatable) {
//                ((Animatable) drawable).start();
//            } else {
//                mProgressView.animate().rotation(36000).setDuration(100000);
//            }

            mProgressView.animate().rotation(36000).setDuration(100000);
        }
    }

    @Override
    public void onStartAnimator(RefreshLayout layout, int headHeight, int extendHeight) {
    }

    @Override
    public int onFinish(RefreshLayout layout, boolean success) {
        if (mProgressDrawable != null) {
            mProgressDrawable.stop();
        } else {
//            Drawable drawable = mProgressView.getDrawable();
//            if (drawable instanceof Animatable) {
//                ((Animatable) drawable).stop();
//            } else {
//                mProgressView.animate().rotation(0).setDuration(300);
//            }
            mProgressView.animate().rotation(0).setDuration(0);
        }
        if (success) {
            mTitleText.setText(REFRESH_HEADER_FINISH);
        } else {
            mTitleText.setText(REFRESH_HEADER_FAILED);
        }
        return mFinishDuration;//延迟500毫秒之后再弹回
    }

    @Override@Deprecated
    public void setPrimaryColors(@ColorInt int ... colors) {
        if (colors.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable)) {
                setPrimaryColor(colors[0]);
            }
            if (colors.length > 1) {
                setAccentColor(colors[1]);
            } else {
                setAccentColor(colors[0] == 0xffffffff ? 0xff666666 : 0xffffffff);
            }
        }
    }

    @NonNull
    public View getView() {
        return this;
    }

    @Override
    public SpinnerStyle getSpinnerStyle() {
        return mSpinnerStyle;
    }

    @Override
    public void onStateChanged(RefreshLayout refreshLayout, RefreshState oldState, RefreshState newState) {
        switch (newState) {
            case None:
//                restoreRefreshLayoutBackground();
                mProgressView.setPercent(0);
            case PullDownToRefresh:
                mTitleText.setText(REFRESH_HEADER_PULLDOWN);
                break;
            case Refreshing:
            case RefreshReleased:
                mTitleText.setText(REFRESH_HEADER_REFRESHING);
                break;
            case ReleaseToRefresh:
                mTitleText.setText(REFRESH_HEADER_RELEASE);
//                replaceRefreshLayoutBackground(refreshLayout);
                break;
            case Loading:
                mTitleText.setText(REFRESH_HEADER_LOADING);
                break;
        }
    }
    //</editor-fold>


    public DemoHeader setPrimaryColor(@ColorInt int primaryColor) {
        setBackgroundColor(mBackgroundColor = primaryColor);
        if (mRefreshKernel != null) {
            mRefreshKernel.requestDrawBackgoundForHeader(mBackgroundColor);
        }
        return this;
    }

    public DemoHeader setAccentColor(@ColorInt int accentColor) {
        if (mArrowDrawable != null) {
            mArrowDrawable.parserColors(accentColor);
        }
        if (mProgressDrawable != null) {
            mProgressDrawable.setColor(accentColor);
        }
        mTitleText.setTextColor(accentColor);
        return this;
    }


}
