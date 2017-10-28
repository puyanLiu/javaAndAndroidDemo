package com.example.liupuyan.a06_activitydemo;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/10/25.
 */
public class MyActivity extends AppCompatActivity {

    private int a;
    // 输入const，按下Tab键
    private static final int aa = 728;
    // 输入key，按下Tab键
    private static final String KEY_a = "a";
    // 输入logt，按下Tab键
    private static final String TAG = "MainActivity";
    private static final String aaaa = "aaaa";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 输入Toast，按下Tab键
        Toast.makeText(this, "", Toast.LENGTH_SHORT).show();
        // 输入sout，回车
        System.out.println("哈哈");
        // 输入soutm，回车
        System.out.println("MainActivity.onCreate");
        // 输入soutp，回车
        System.out.println("savedInstanceState = [" + savedInstanceState + "]");
        // 输入soutv，回车
        System.out.println("savedInstanceState = " + savedInstanceState);
        // 输入logi
        Log.i(TAG, "onCreate: ");
        // 输入logd
        Log.d(TAG, "onCreate: ");
        // 输入loge
        Log.e(TAG, "onCreate: ", new Throwable());
        // 对一个对象判断空 输入ifn
        if (savedInstanceState == null) {

        }
        // 对一个对象判断非空，输入inn
        if (savedInstanceState != null) {

        }
        // IntentView
        Intent view = new Intent();
        view.setAction(Intent.ACTION_VIEW);
        view.setData(Uri.parse(""));
        startActivity(view);

    }
}