package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.RatingBar;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class RatingBarActivity extends Activity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ratingbar);

        RatingBar rb1 = (RatingBar)findViewById(R.id.rb1);
        rb1.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            @Override
            public void onRatingChanged(RatingBar ratingBar, float v, boolean b) {
                Toast.makeText(RatingBarActivity.this, "rating:" + String.valueOf(v), Toast.LENGTH_LONG).show();
            }
        });
    }
}
