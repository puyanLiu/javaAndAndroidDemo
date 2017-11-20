package com.queqianme.www.bannerproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by liupuyan on 2017/11/17.
 */

public class CustomBannerActivity extends AppCompatActivity {
    Banner banner0,banner1,banner2,banner3;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_custom_banner);
        banner0 = (Banner) findViewById(R.id.banner0);
        banner1 = (Banner) findViewById(R.id.banner1);
        banner2 = (Banner) findViewById(R.id.banner2);
        banner3 = (Banner) findViewById(R.id.banner3);

        banner0.setImages(App.images)
                .setImageLoader(new GlideImageLoader())
                .start();

        banner1.setImages(App.images)
                .setImageLoader(new GlideImageLoader())
                .start();

        banner2.setImages(App.images)
                .setImageLoader(new GlideImageLoader())
                .start();

        banner3.setImages(App.images)
                .setBannerTitles(App.titles)
                .setBannerStyle(BannerConfig.CIRCLE_INDICATOR_TITLE_INSIDE)
                .setImageLoader(new GlideImageLoader())
                .start();
    }
}
