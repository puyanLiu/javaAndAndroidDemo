package com.queqianme.www.bannerproject;

import android.content.Context;
import android.view.View;

import java.io.Serializable;

/**
 * Created by liupuyan on 2017/11/16.
 */

public interface ImageLoaderInterface<T extends View> extends Serializable {
    void displayImage(Context context, Object path, T imageView);

    T createImageView(Context context);
}
