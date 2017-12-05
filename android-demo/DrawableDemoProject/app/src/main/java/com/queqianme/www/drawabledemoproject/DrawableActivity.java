package com.queqianme.www.drawabledemoproject;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LevelListDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.Timer;
import java.util.TimerTask;

public class DrawableActivity extends AppCompatActivity {


    private Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            if (msg.what == 0x123) {
                clipDrawable.setLevel(clipDrawable.getLevel() + 500);
            } else if (msg.what == 0x124) {
                rotateDrawable.setLevel(rotateDrawable.getLevel() + 100);
            } else if (msg.what == 0x125) {
                if (levelListDrawable.getLevel() > 10000)
                    levelListDrawable.setLevel(0);
                img_level_list.setImageLevel(levelListDrawable.getLevel() + 2000);
            }
        }
    };

    private ClipDrawable clipDrawable;
    private RotateDrawable rotateDrawable;
    private AnimationDrawable animationDrawable;
    private LevelListDrawable levelListDrawable;
    private ImageView img_level_list;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

//        setContentView(new SampleView(this));


//        setContentView(R.layout.activity_drawable1);
//        colorDrawable();
//        bitmapDrawable();
//        insetDrawable();
//        clipDrawable();


        setContentView(R.layout.activity_drawable2);
        rotateDrawable();
        animationDrawable();
        transitionDrawable();
        levelListDrawable();
    }

    public void levelListDrawable() {
        img_level_list = (ImageView) findViewById(R.id.img_level_list);
        levelListDrawable = (LevelListDrawable) img_level_list.getDrawable();
        img_level_list.setImageLevel(2000);
        new Timer().schedule(new TimerTask() {
            @Override
            public void run() {
                handler.sendEmptyMessage(0x125);
            }
        }, 0, 100);
    }

    public void transitionDrawable() {
        ImageView img_transition = (ImageView) findViewById(R.id.img_transition);
        TransitionDrawable transitionDrawable = (TransitionDrawable)img_transition.getDrawable();
//        transitionDrawable.startTransition(3000);
        // 反过来播放
        transitionDrawable.reverseTransition(3000);
    }

    public void animationDrawable() {
        ImageView img_animation = (ImageView) findViewById(R.id.img_animation);
        animationDrawable = (AnimationDrawable) img_animation.getDrawable();
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                animationDrawable.start();
            }
        }, 300);
    }

    public void rotateDrawable() {
        ImageView img_rotate = (ImageView) findViewById(R.id.img_rotate);
        rotateDrawable = (RotateDrawable) img_rotate.getDrawable();
        final Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                handler.sendEmptyMessage(0x124);
                if (rotateDrawable.getLevel() > 10000) {
                    timer.cancel();
                }
            }
        }, 0, 100);
    }

    public void clipDrawable() {
        ImageView img_clip = (ImageView) findViewById(R.id.img_clip);
        clipDrawable = (ClipDrawable) img_clip.getDrawable();
        final Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                handler.sendEmptyMessage(0x123);
                if (clipDrawable.getLevel() >= 10000) {
                    timer.cancel();
                }
            }
        }, 0, 300);
    }

    public void insetDrawable() {
        TextView txt_inset = (TextView) findViewById(R.id.txt_inset);
        InsetDrawable insetDrawable = new InsetDrawable(getResources().getDrawable(R.drawable.gradient_sweep_drawable),
               10, 10, 10, 10);
        txt_inset.setBackground(insetDrawable);
    }

    public void bitmapDrawable() {
        TextView txt_bitmap = (TextView) findViewById(R.id.txt_bitmap);
        // 设置位图背景
        Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        bitmapDrawable.setDither(true);
        bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        txt_bitmap.setBackground(bitmapDrawable);
    }

    public void colorDrawable() {
        TextView txt_hello = (TextView) findViewById(R.id.txt_hello);
        // ColorDrawable 颜色填充
        ColorDrawable colorDrawable = new ColorDrawable(0xffff2200);
        txt_hello.setBackground(colorDrawable);

        // 获取colors.xml中颜色值
        int greyColor = getResources().getColor(R.color.colorGrey);
        txt_hello.setTextColor(greyColor);

        // 直接定义颜色值，要加上0x,而且必须加透明度
        int backgroundColor = 0xff123456;
        txt_hello.setBackgroundColor(backgroundColor);

        // 使用系统定义好的颜色
        // BLACK(黑色),BLUE(蓝色),CYAN(青色),GRAY(灰色),GREEN(绿色),RED(红色),WRITE(白色),YELLOW(黄色)
        // xml中使用:android:background="@android:color/black"
        int greenColor = Resources.getSystem().getColor(android.R.color.holo_green_light);
        txt_hello.setTextColor(greenColor);

        // 利用静态方法argb设置颜色
        // 透明度-红-绿-蓝;eg:#RGB #ARGB #RRGGBB #AARRGGBB
        // 每个要素都由一个字节(8 bit)来表示,所以取值范围为0~255,在xml中设置颜色可以忽略透明度, 但是如果你是在Java代码中的话就需要明确指出透明度的值了,省略的话表示完全透明
        txt_hello.setTextColor(Color.argb(0xff, 0xff,0x00,0x00));

    }
}
