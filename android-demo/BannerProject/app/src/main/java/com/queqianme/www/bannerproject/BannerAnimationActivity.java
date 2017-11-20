package com.queqianme.www.bannerproject;

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import com.queqianme.www.bannerproject.transformer.AccordionTransformer;
import com.queqianme.www.bannerproject.transformer.BackgroundToForegroundTransformer;
import com.queqianme.www.bannerproject.transformer.CubeInTransformer;
import com.queqianme.www.bannerproject.transformer.CubeOutTransformer;
import com.queqianme.www.bannerproject.transformer.DefaultTransformer;
import com.queqianme.www.bannerproject.transformer.DepthPageTransformer;
import com.queqianme.www.bannerproject.transformer.FlipHorizontalTransformer;
import com.queqianme.www.bannerproject.transformer.FlipVerticalTransformer;
import com.queqianme.www.bannerproject.transformer.ForegroundToBackgroundTransformer;
import com.queqianme.www.bannerproject.transformer.RotateDownTransformer;
import com.queqianme.www.bannerproject.transformer.RotateUpTransformer;
import com.queqianme.www.bannerproject.transformer.ScaleInOutTransformer;
import com.queqianme.www.bannerproject.transformer.StackTransformer;
import com.queqianme.www.bannerproject.transformer.TabletTransformer;
import com.queqianme.www.bannerproject.transformer.ZoomInTransformer;
import com.queqianme.www.bannerproject.transformer.ZoomOutSlideTransformer;
import com.queqianme.www.bannerproject.transformer.ZoomOutTranformer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by liupuyan on 2017/11/17.
 */

public class BannerAnimationActivity extends AppCompatActivity implements AdapterView.OnItemClickListener, OnBannerListener {

    Banner banner;
    List<Class<? extends ViewPager.PageTransformer>> transformers=new ArrayList<>();
    public void initData(){
        transformers.add(DefaultTransformer.class);
        transformers.add(AccordionTransformer.class);
        transformers.add(BackgroundToForegroundTransformer.class);
        transformers.add(ForegroundToBackgroundTransformer.class);
        transformers.add(CubeInTransformer.class);//兼容问题，慎用
        transformers.add(CubeOutTransformer.class);
        transformers.add(DepthPageTransformer.class);
        transformers.add(FlipHorizontalTransformer.class);
        transformers.add(FlipVerticalTransformer.class);
        transformers.add(RotateDownTransformer.class);
        transformers.add(RotateUpTransformer.class);
        transformers.add(ScaleInOutTransformer.class);
        transformers.add(StackTransformer.class);
        transformers.add(TabletTransformer.class);
        transformers.add(ZoomInTransformer.class);
        transformers.add(ZoomOutTranformer.class);
        transformers.add(ZoomOutSlideTransformer.class);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_banner_animation);
        initData();
        banner = (Banner) findViewById(R.id.banner);
        ListView listView = (ListView) findViewById(R.id.list);
        String[] data = getResources().getStringArray(R.array.anim);
        listView.setAdapter(new SampleAdapter(this, data));
        listView.setOnItemClickListener(this);

        String[] urls = getResources().getStringArray(R.array.url);
        String[] tips = getResources().getStringArray(R.array.title);
        List list = Arrays.asList(urls);

        banner.setImages(App.images)
                .setImageLoader(new GlideImageLoader())
                .setOnBannerListener(this)
                .start();

    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        banner.setBannerAnimation(transformers.get(position));
    }

    @Override
    public void OnBannerClick(int position) {
        Toast.makeText(getApplicationContext(),"你点击了："+position,Toast.LENGTH_SHORT).show();
    }
}
