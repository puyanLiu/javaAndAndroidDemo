package com.example.liupuyan.a02_sendmessagedemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.EditText;

import butterknife.Bind;
import butterknife.ButterKnife;

public class MainActivity extends AppCompatActivity {

    // 使用butterknife 一个Android View注入的库
    @Bind(R.id.txtPhone)
    EditText txtPhone;
    @Bind(R.id.txtContent)
    EditText txtContent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ButterKnife.bind(this);
    }

    public void btnSendMessageClick(View v) {
        System.out.println("发送短信");
//        EditText txtPhone = (EditText) findViewById(R.id.txtPhone);
//        EditText txtContent = (EditText) findViewById(R.id.txtContent);
        String phone = txtPhone.getText().toString();
        String content = txtContent.getText().toString();

        // 使用butterknife

        SMSMethod.getInstance(this).SendMessage(phone, content);


        // 使用发送短信的api
//        SmsManager sm = SmsManager.getDefault();
//        // 把长短信截成若干条短信
//        ArrayList<String> sms = sm.divideMessage(content);
//        for (String s: sms) {
//            // arg0 目标号码
//            // arg1 短信中心号码，null表示使用默认
//            // arg2 短信正文
//            sm.sendTextMessage(phone, null, s, null, null);
//        }
    }
}
