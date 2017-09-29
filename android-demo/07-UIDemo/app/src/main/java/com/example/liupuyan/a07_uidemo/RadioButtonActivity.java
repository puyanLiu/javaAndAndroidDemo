package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/9/29.
 */

public class RadioButtonActivity extends Activity {

    private RadioGroup radioGroup;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_radiobutton);

        radioGroup = (RadioGroup)findViewById(R.id.radioGroup);
        // 第一种获得单选按钮值的方法
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i) {
                RadioButton radioButton = (RadioButton)findViewById(i);
                Toast.makeText(getApplicationContext(), "按钮值发生改变，你选了" + radioButton.getText(), Toast.LENGTH_SHORT).show();
            }
        });
    }

    public void btn_click(View v) {
        // 第二种 通过点击其他按钮获取选中单选按钮的值
        for (int i = 0; i < radioGroup.getChildCount(); i++) {
            RadioButton rd = (RadioButton)radioGroup.getChildAt(i);
            if (rd.isChecked()) {
                Toast.makeText(getApplicationContext(), "点击提交按钮，你选了" + rd.getText(), Toast.LENGTH_SHORT).show();
                break;
            }
        }
    }
}
