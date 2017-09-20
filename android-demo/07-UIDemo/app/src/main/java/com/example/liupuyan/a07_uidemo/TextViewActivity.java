package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import java.lang.reflect.Field;

/**
 * Created by liupuyan on 2017/9/19.
 */

public class TextViewActivity extends Activity {

    private TextView txtPhotoView;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_textview);

        txtPhotoView = (TextView)findViewById(R.id.txt_photoText);
        // 文本框设置图片
        // 获取四个不同方向上的图片资源
        Drawable[] drawables = txtPhotoView.getCompoundDrawables();
        // 数组 0~3 依次左上右下
        // 设置左上右下坐标点
        // 从离文字最左边开始10dp处到50dp处 宽是:从文字上方0dp处往上延伸50dp
        drawables[0].setBounds(10, 0, 50, 50);
        drawables[1].setBounds(100, 0, 50, 50);
        drawables[2].setBounds(0, 0, 50, 50);
        drawables[3].setBounds(0, 0, 50, 50);
        // 重新设置 没有图片可以null
        txtPhotoView.setCompoundDrawables(drawables[0], drawables[1], drawables[2], drawables[3]);

        // --------------------------------------显示HTML
        TextView txtShowHtml = (TextView)findViewById(R.id.txt_showHtml);
        String s1 = "<font color='blue'><b>百度一下，你就知道~：</b></font><br>";
        s1 += "<a href = 'http://www.baidu.com'>百度</a>";
        /* 从API level 24开始，fromHtml(String)被废弃，使用fromHtml(String source, int flags) 代替
            flags:
            FROM_HTML_MODE_COMPACT：html块元素之间使用一个换行符分隔
            FROM_HTML_MODE_LEGACY：html块元素之间使用两个换行符分隔
        */
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            txtShowHtml.setText(Html.fromHtml(s1, Html.FROM_HTML_MODE_COMPACT));
        } else {
            txtShowHtml.setText(Html.fromHtml(s1));
        }
        txtShowHtml.setMovementMethod(LinkMovementMethod.getInstance());

        // --------------------------------------显示图片标签
        TextView txtShowSrcHtml = (TextView)findViewById(R.id.txt_showSrcHtml);
        String s2 = "图片：<img src='photo2' /><br>";
        Html.ImageGetter imageGetter = new Html.ImageGetter() {
            @Override
            public Drawable getDrawable(String s) {
                Drawable draw = null;
                try {
                    Field field = R.drawable.class.getField(s);
                    int resourceId = Integer.parseInt(field.get(null).toString());
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
                        draw = getResources().getDrawable(resourceId, null);
                    } else {
                        draw = getResources().getDrawable(resourceId);
                    }
                    draw.setBounds(0, 0, draw.getIntrinsicWidth(), draw.getIntrinsicHeight());
                } catch (NoSuchFieldException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
                return draw;
            }
        };
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            txtShowSrcHtml.setText(Html.fromHtml(s2, Html.FROM_HTML_MODE_COMPACT, imageGetter, null));
        } else {
            txtShowSrcHtml.setText(Html.fromHtml(s2, imageGetter, null));
        }

        // --------------------------------------SpannableString定制文本
        /*
        BackgroundColorSpan 背景色
        ClickableSpan 文本可点击，有点击事件
        ForegroundColorSpan 文本颜色（前景色）
        MaskFilterSpan 修饰效果，如模糊(BlurMaskFilter)、浮雕(EmbossMaskFilter)
        MetricAffectingSpan 父类，一般不用
        RasterizerSpan 光栅效果
        StrikethroughSpan 删除线（中划线）
        SuggestionSpan 相当于占位符
        UnderlineSpan 下划线
        AbsoluteSizeSpan 绝对大小（文本字体）
        DynamicDrawableSpan 设置图片，基于文本基线或底部对齐。
        ImageSpan 图片
        RelativeSizeSpan 相对大小（文本字体）
        ReplacementSpan 父类，一般不用
        ScaleXSpan 基于x轴缩放
        StyleSpan 字体样式：粗体、斜体等
        SubscriptSpan 下标（数学公式会用到）
        SuperscriptSpan 上标（数学公式会用到）
        TextAppearanceSpan 文本外貌（包括字体、大小、样式和颜色）
        TypefaceSpan 文本字体
        URLSpan 文本超链接
        */
        TextView txtSpannableString = (TextView)findViewById(R.id.txt_SpannableString);
        SpannableString span = new SpannableString("红色打电话斜体删除线灰色下划线图片：.");
        // Spanned.SPAN_EXCLUSIVE_EXCLUSIVE(前后都不包括)
        span.setSpan(new ForegroundColorSpan(Color.RED), 0, 2, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        span.setSpan(new URLSpan("tel:10086"), 2 , 5, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        span.setSpan(new StyleSpan(Typeface.BOLD_ITALIC), 5, 7, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        span.setSpan(new StrikethroughSpan(), 7, 10, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        span.setSpan(new UnderlineSpan(), 10, 15, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        span.setSpan(new ForegroundColorSpan(Color.GRAY), 10, 15, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        // 获取资源
        Drawable d = null;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
            d = getResources().getDrawable(R.drawable.photo3, null);
        } else {
            d = getResources().getDrawable(R.drawable.photo3);
        }
        d.setBounds(0, 0, d.getIntrinsicWidth(), d.getIntrinsicHeight());
        // 图片替换文本
        ImageSpan imageSpan = new ImageSpan(d, ImageSpan.ALIGN_BASELINE);
        span.setSpan(imageSpan, 18, 19, Spanned.SPAN_INCLUSIVE_EXCLUSIVE);
        txtSpannableString.setText(span);

        // --------------------------------------实现部分可点击的TextView
        TextView txtClickText = (TextView)findViewById(R.id.txt_clickText);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 20; i++) {
            sb.append("好友" + i + ",");
        }
        String likeUsers = sb.substring(0, sb.lastIndexOf(",")).toString();
        txtClickText.setMovementMethod(LinkMovementMethod.getInstance());
        txtClickText.setText(addClickPart(likeUsers), TextView.BufferType.SPANNABLE);
    }

    // 定义一个点击每个部分文字的处理方法
    private SpannableStringBuilder addClickPart(String str) {
        Drawable d = null;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
            d = getResources().getDrawable(R.drawable.photo3, null);
        } else {
            d = getResources().getDrawable(R.drawable.photo3);
        }
        d.setBounds(0, 0, 20, 20);
        // 图片替换文本
        ImageSpan imageSpan = new ImageSpan(d, ImageSpan.ALIGN_BASELINE);

        SpannableString ss = new SpannableString("p.");
        ss.setSpan(imageSpan, 0, 1, Spanned.SPAN_INCLUSIVE_EXCLUSIVE);

        SpannableStringBuilder ssb = new SpannableStringBuilder(ss);
        ssb.append(str);
        String[] linkUsers = str.split(",");
        if (linkUsers.length > 0) {
            for (int i = 0; i < linkUsers.length; i++) {
                final String name = linkUsers[i];
                final  int start = str.indexOf(name) + ss.length();
                ssb.setSpan(new ClickableSpan() {
                    @Override
                    public void onClick(View view) {
                        Toast.makeText(TextViewActivity.this, name, Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void updateDrawState(TextPaint ds) {
                        super.updateDrawState(ds);
                        // 删除下划线 设置字体颜色为蓝色
                        ds.setColor(Color.BLUE);
                        ds.setUnderlineText(false);
                    }
                }, start, start + name.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            }
        }

        return ssb.append("等" + linkUsers.length + "个人觉得很赞");
    }
}
