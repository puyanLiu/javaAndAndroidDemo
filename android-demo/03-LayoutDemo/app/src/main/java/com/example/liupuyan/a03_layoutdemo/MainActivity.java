package com.example.liupuyan.a03_layoutdemo;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private String tag = "liupuyan";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.relative_demo);

        Toast t = Toast.makeText(this, "哈哈哈快快显现", 0);
        t.show();

        final Button btnClick = (Button) findViewById(R.id.btnCenter);
        // 设置监听
        btnClick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Drawable drawable = new ColorDrawable(0xffff2200);
                btnClick.setBackground(drawable);
                System.out.println("----------------------------------------------------------你好啊");
                System.out.print("-----------------------------------哈哈");

                Log.e(tag, "输出Error"); // 错误
                Log.w(tag, "输出Warn"); // 警告
                Log.i(tag, "输出Info"); // 信息
                Log.d(tag, "输出Debug"); // 调试
                Log.v(tag, "输出Verbose"); // 详细
            }
        });
    }

}
