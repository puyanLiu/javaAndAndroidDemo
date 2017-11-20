package com.queqianme.www.bannerproject;

import android.content.Context;
import android.widget.ImageView;

/**
 * Created by liupuyan on 2017/11/16.
 */

public abstract class ImageLoader implements ImageLoaderInterface<ImageView> {

    @Override
    public ImageView createImageView(Context context) {
        ImageView imageView = new ImageView(context);
        return imageView;
    }
}
