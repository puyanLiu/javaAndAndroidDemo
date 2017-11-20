package com.queqianme.www.marqueeproject;

import android.content.Context;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/11/16.
 */

public class SimpleMF<E extends CharSequence> extends MarqueeFactory<TextView, E> {

    public SimpleMF(Context mContext) {
        super(mContext);
    }

    @Override
    public TextView generateMarqueeItemView(E data) {
        TextView mView = new TextView(mContext);
        mView.setLines(1);
        mView.setText(data);
        return mView;
    }
}
