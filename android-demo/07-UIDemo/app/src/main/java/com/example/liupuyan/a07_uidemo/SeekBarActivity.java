package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class SeekBarActivity extends Activity {

    private SeekBar sb1;
    private TextView txtValue1;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_seekbar);

        sb1 = (SeekBar)findViewById(R.id.sb1);
        txtValue1 = (TextView)findViewById(R.id.txtValue1);

        bindViews();
    }

    private void bindViews() {
        sb1.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int i, boolean b) {
                txtValue1.setText("当前进度值：" + i + " / 100");
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
                Toast.makeText(SeekBarActivity.this, "触碰SeekBar", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                Toast.makeText(SeekBarActivity.this, "放开SeekBar", Toast.LENGTH_SHORT).show();
            }
        });
    }
}
