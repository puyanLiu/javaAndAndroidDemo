package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;

import org.w3c.dom.Text;

/**
 * Created by liupuyan on 2017/9/19.
 */

public class ScrollViewActivity extends Activity {

    private ScrollView scrollView;
    private TextView txtShow;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_scrollview);

        scrollView = (ScrollView)findViewById(R.id.scrollView);
        txtShow = (TextView)findViewById(R.id.txtShow);

        bindViews();
    }

    private void bindViews() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 100; i++) {
            sb.append("嘿嘿 " + i + "\n");
        }
        txtShow.setText(sb.toString());
    }

    public void btnClick(View v) {
        switch (v.getId()) {
            case R.id.btnDown:
                scrollView.fullScroll(ScrollView.FOCUS_DOWN);
                break;
            case R.id.btnUp:
                scrollView.fullScroll(ScrollView.FOCUS_UP);
                break;
        }
    }


}
