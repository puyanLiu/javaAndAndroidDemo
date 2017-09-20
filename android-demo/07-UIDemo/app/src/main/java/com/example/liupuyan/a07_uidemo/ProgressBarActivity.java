package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.ImageView;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class ProgressBarActivity extends Activity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_progressbar);

        ImageView img_pgbar = (ImageView)findViewById(R.id.img_bgbar);
        final AnimationDrawable ad = (AnimationDrawable)img_pgbar.getDrawable();
        img_pgbar.postDelayed(new Runnable() {
            @Override
            public void run() {
                ad.start();
            }
        }, 100);
    }
}
