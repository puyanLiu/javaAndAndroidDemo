package com.queqianme.www.webviewdemoproject;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

/**
 * Created by liupuyan on 2017/12/8.
 *
 * WebView滚动事件的监听
 *
 * 我们都知道监听滚动事件一般都是设置setOnScrollChangedListener，可惜的是 WebView并没有给我们提供这样的方法，但是我们可以重写WebView，覆盖里面的一个方法： protected void onScrollChanged(final int l, final int t, final int oldl,final int oldt){} 然后再对外提供一个接口
 */

public class MyWebView extends WebView {

    private OnSrcollChangedCallback onSrcollChangedCallback;

    public MyWebView(Context context) {
        super(context);
    }

    public MyWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public MyWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (onSrcollChangedCallback != null) {
            onSrcollChangedCallback.onScroll(l - oldl, t - oldt);
        }
    }

    public OnSrcollChangedCallback getOnSrcollChangedCallback() {
        return onSrcollChangedCallback;
    }

    public void setOnSrcollChangedCallback(OnSrcollChangedCallback onSrcollChangedCallback) {
        this.onSrcollChangedCallback = onSrcollChangedCallback;
    }

    public static interface OnSrcollChangedCallback {
        // 这里的dx和dy代表的是x轴和y轴上的偏移量，你也可以自己把l, t, oldl, oldt四个参数暴露出来
        public void onScroll(int dx, int dy);
    }
}
