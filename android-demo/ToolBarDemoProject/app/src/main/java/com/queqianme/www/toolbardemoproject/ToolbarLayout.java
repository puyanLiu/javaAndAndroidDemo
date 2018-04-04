package com.queqianme.www.toolbardemoproject;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.StyleableRes;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

/**
 * Created by liupuyan on 2017/11/14.
 */

public class ToolbarLayout extends RelativeLayout {

    @BindView(R.id.txt_left1)
    TextView txtLeft1;
    @BindView(R.id.txt_left2)
    TextView txtLeft2;
    @BindView(R.id.ll_left)
    LinearLayout llLeft;
    @BindView(R.id.txt_title)
    TextView txtTitle;
    @BindView(R.id.ll_title)
    LinearLayout llTitle;
    @BindView(R.id.txt_right1)
    TextView txtRight1;
    @BindView(R.id.txt_right2)
    TextView txtRight2;
    @BindView(R.id.ll_right)
    LinearLayout llRight;
    @BindView(R.id.tb_toolbar)
    Toolbar tbToolbar;

    private int textDefValue = (int) (10 * App.density);
    private int imgDefValue = (int) (20 * App.density);

    private onToolbarLayoutListener onToolbarLayoutListener;

    public ToolbarLayout(Context context) {
        this(context, null);
    }

    public ToolbarLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ToolbarLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    public ToolbarLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        initView(context, attrs);
    }

    private void initView(Context context, AttributeSet attrs) {
        View child = View.inflate(context, R.layout.toolbar_layout, null);
        ButterKnife.bind(this, child);
        this.addView(child);

        if (attrs == null)
            return;

        int count = attrs.getAttributeCount();
        for (int i = 0; i < count; i++) {
            String attributeName = attrs.getAttributeName(i);
            String attributeValue = attrs.getAttributeValue(i);
            System.out.println(attributeName + "=" + attributeValue);
        }

        // 获取styleable资源对象
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.ToolbarLayout);
        setTextContent(txtLeft1, typedArray, R.styleable.ToolbarLayout_left1_padding, R.styleable.ToolbarLayout_left1_text, R.styleable
                .ToolbarLayout_left1_background);
        setTextContent(txtLeft2, typedArray, R.styleable.ToolbarLayout_left2_padding, R.styleable.ToolbarLayout_left2_text, R.styleable
                .ToolbarLayout_left2_background);
        setTextContent(txtRight1, typedArray, R.styleable.ToolbarLayout_right1_padding, R.styleable.ToolbarLayout_right1_text, R.styleable
                .ToolbarLayout_right1_background);
        setTextContent(txtRight2, typedArray, R.styleable.ToolbarLayout_right2_padding, R.styleable.ToolbarLayout_right2_text, R.styleable
                .ToolbarLayout_right2_background);

        String title = typedArray.getString(R.styleable.ToolbarLayout_title);
        if (title != null) {
            txtTitle.setText(title);
        }
        int titlePadding = (int)(App.W * 0.2);
        System.out.println("----------------" + titlePadding);
        llTitle.setPadding(titlePadding, 0, titlePadding, 0);

        setOnToolbarLayoutListener(new ToolbarLayoutListener());
    }

    private void setTextContent(TextView textView, TypedArray typedArray, @StyleableRes int paddingIndex,
                                @StyleableRes int textIndex, @StyleableRes int backgroundIndex) {
        String text = typedArray.getString(textIndex);
        textView.setText(text);

        int background = typedArray.getResourceId(backgroundIndex, -1);
        if (background != -1) {
            textView.setBackgroundResource(background);
        }
        int padding = typedArray.getDimensionPixelSize(paddingIndex, text != null ? textDefValue : background != -1 ? imgDefValue : 0);
        textView.setPadding(padding, 0, padding, 0);
        textView.setVisibility(text == null && background == -1 ? GONE : VISIBLE);
    }

    public ToolbarLayout setOnToolbarLayoutListener(ToolbarLayout.onToolbarLayoutListener onToolbarLayoutListener) {
        this.onToolbarLayoutListener = onToolbarLayoutListener;
        return this;
    }

    public ToolbarLayout setTitle(String title) {
        txtTitle.setText(title);
        return this;
    }

    public ToolbarLayout setLeft1Text(String text) {
        txtLeft1.setText(text);
        return this;
    }

    public ToolbarLayout setLeft2Text(String text) {
        txtLeft2.setText(text);
        return this;
    }

    public ToolbarLayout setRight1Text(String text) {
        txtRight1.setText(text);
        return this;
    }

    public ToolbarLayout setRight2Text(String text) {
        txtRight2.setText(text);
        return this;
    }

    public ToolbarLayout setLeft1Background(@DrawableRes int resid) {
        txtLeft1.setBackgroundResource(resid);
        return this;
    }

    public ToolbarLayout setLeft2Background(@DrawableRes int resid) {
        txtLeft2.setBackgroundResource(resid);
        return this;
    }

    public ToolbarLayout setRight1Background(@DrawableRes int resid) {
        txtRight1.setBackgroundResource(resid);
        return this;
    }

    public ToolbarLayout setRight2Background(@DrawableRes int resid) {
        txtRight2.setBackgroundResource(resid);
        return this;
    }

    @OnClick({R.id.txt_left1, R.id.txt_left2, R.id.txt_right1, R.id.txt_right2})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.txt_left1:
                if (onToolbarLayoutListener != null) {
                    onToolbarLayoutListener.onLeft1Cliked();
                }
                break;
            case R.id.txt_left2:
                if (onToolbarLayoutListener != null) {
                    onToolbarLayoutListener.onLeft2Cliked();
                }
                break;
            case R.id.txt_right1:
                if (onToolbarLayoutListener != null) {
                    onToolbarLayoutListener.onRight1Cliked();
                }
                break;
            case R.id.txt_right2:
                if (onToolbarLayoutListener != null) {
                    onToolbarLayoutListener.onRight2Cliked();
                }
                break;
        }
    }

    public interface onToolbarLayoutListener {
        void onLeft1Cliked();

        void onLeft2Cliked();

        void onRight1Cliked();

        void onRight2Cliked();
    }

    public class ToolbarLayoutListener implements onToolbarLayoutListener {

        @Override
        public void onLeft1Cliked() {
            ActivityManagerUtils.getActivityManager().finishActivity((Activity) getContext());
        }

        @Override
        public void onLeft2Cliked() {

        }

        @Override
        public void onRight1Cliked() {

        }

        @Override
        public void onRight2Cliked() {

        }
    }
}
