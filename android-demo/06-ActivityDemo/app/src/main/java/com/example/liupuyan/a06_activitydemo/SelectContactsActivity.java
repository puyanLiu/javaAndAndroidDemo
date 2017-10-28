package com.example.liupuyan.a06_activitydemo;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/25.
 */
public class SelectContactsActivity extends AppCompatActivity {

    private static final int CONTACT = 10;
    private static final int SMS = 20;
    private static final int SEND = 30;
    private EditText et_name;
    private EditText et_content;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_select_contacts);
    }

    // 选择联系人
    public void btn_select_contacts_click(View v) {
        Intent intent = new Intent(this, ContactActivity.class);
        // 启动一个Activity去获取数据结果
        startActivityForResult(intent, CONTACT);
    }

    // 快捷回复
    public void btn_quick_replay_click(View v) {
        Intent intent = new Intent(this, SmsActivity.class);
        startActivityForResult(intent, SMS);
    }

    // 发送
    public void btn_send_click(View v) {
        Intent intent = new Intent(this, HandleActivity.class);
        intent.putExtra("name", et_name.getText().toString());
        intent.putExtra("content", et_content.getText().toString());
        startActivityForResult(intent, SEND);
    }

    // 只有通过startActivityForResult启动的Activity销毁时，才会回调这个方法，方法中传入的intent就封装了返回的数据
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        // 通过请求码来判断data来自哪个Activity
        if (requestCode == CONTACT) {
            String name = data.getStringExtra("name");
            et_name = (EditText) findViewById(R.id.et_name);
            et_name.setText(name);
        } else if (requestCode == SMS) {
            String content = data.getStringExtra("content");
            et_content = (EditText) findViewById(R.id.et_content);
            et_content.setText(content);
        } else if (requestCode == SEND) {
            // 通过结果码判断data中的数据是什么类型
            if (resultCode == 100) {
                String name = data.getStringExtra("name");
                Toast.makeText(SelectContactsActivity.this, name, Toast.LENGTH_SHORT).show();
            } else if (resultCode == 200) {
                String content = data.getStringExtra("content");
                Toast.makeText(SelectContactsActivity.this, content, Toast.LENGTH_SHORT).show();
            }
        }
    }
}