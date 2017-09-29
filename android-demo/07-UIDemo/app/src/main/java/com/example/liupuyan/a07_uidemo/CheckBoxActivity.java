package com.example.liupuyan.a07_uidemo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/9/29.
 */

public class CheckBoxActivity extends Activity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    private CheckBox cb_one;
    private CheckBox cb_two;
    private CheckBox cb_three;
    private Button btn_send;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_checkbox);

        cb_one = (CheckBox)findViewById(R.id.cb_one);
        cb_two = (CheckBox)findViewById(R.id.cb_two);
        cb_three = (CheckBox)findViewById(R.id.cb_three);
        btn_send = (Button)findViewById(R.id.btn_send);

        cb_one.setOnCheckedChangeListener(this);
        cb_two.setOnCheckedChangeListener(this);
        cb_three.setOnCheckedChangeListener(this);
        btn_send.setOnClickListener(this);

        // 修改文字与选择框的距离
        cb_two.setButtonDrawable(R.drawable.rad_btn_selctor);
        int rb_paddingLeft = getResources().getDrawable(R.mipmap.ic_check).getIntrinsicWidth() + 5;
        cb_two.setPadding(rb_paddingLeft, 0, 0, 0);
    }


    @Override
    public void onClick(View view) {
        String choose = "";
        if (cb_one.isChecked()) {
            choose += cb_one.getText().toString() + " ";
        }
        if (cb_two.isChecked()) {
            choose += cb_two.getText().toString() + " ";
        }
        if (cb_three.isChecked()) {
            choose += cb_three.getText().toString() + " ";
        }
        Toast.makeText(this, choose, Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
        if (compoundButton.isChecked()) {
            Toast.makeText(this, compoundButton.getText().toString(), Toast.LENGTH_SHORT).show();
        }
    }
}
