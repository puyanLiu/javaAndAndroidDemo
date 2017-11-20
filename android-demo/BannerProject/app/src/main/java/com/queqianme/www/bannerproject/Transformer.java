package com.queqianme.www.bannerproject;

import android.support.v4.view.ViewPager.PageTransformer;

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

/**
 * Created by liupuyan on 2017/11/16.
 */

public class Transformer {
    public static Class<? extends PageTransformer> Default = DefaultTransformer.class;
    public static Class<? extends PageTransformer> Accordion = AccordionTransformer.class;
    public static Class<? extends PageTransformer> BackgroundToForeground = BackgroundToForegroundTransformer.class;
    public static Class<? extends PageTransformer> ForegroundToBackground = ForegroundToBackgroundTransformer.class;
    public static Class<? extends PageTransformer> CubeIn = CubeInTransformer.class;
    public static Class<? extends PageTransformer> CubeOut = CubeOutTransformer.class;
    public static Class<? extends PageTransformer> DepthPage = DepthPageTransformer.class;
    public static Class<? extends PageTransformer> FlipHorizontal = FlipHorizontalTransformer.class;
    public static Class<? extends PageTransformer> FlipVertical = FlipVerticalTransformer.class;
    public static Class<? extends PageTransformer> RotateDown = RotateDownTransformer.class;
    public static Class<? extends PageTransformer> RotateUp = RotateUpTransformer.class;
    public static Class<? extends PageTransformer> ScaleInOut = ScaleInOutTransformer.class;
    public static Class<? extends PageTransformer> Stack = StackTransformer.class;
    public static Class<? extends PageTransformer> Tablet = TabletTransformer.class;
    public static Class<? extends PageTransformer> ZoomIn = ZoomInTransformer.class;
    public static Class<? extends PageTransformer> ZoomOut = ZoomOutTranformer.class;
    public static Class<? extends PageTransformer> ZoomOutSlide = ZoomOutSlideTransformer.class;
}
