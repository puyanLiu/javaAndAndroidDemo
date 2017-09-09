package com.example.liupuyan.a04_showdatademo;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class MainActivity extends AppCompatActivity {

    private EditText txtAccount;
    private EditText txtPwd;
    Context c;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtAccount = (EditText)findViewById(R.id.txtAccount);
        txtPwd = (EditText)findViewById(R.id.txtPwd);

        getSDCapacity();

        readData();
    }

    public void getSDCapacity() {
        File path = Environment.getExternalStorageDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize;
        long totalBlocks;
        long availableBlocks;
        //判断当前版本是否是4.3或以上
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR2){
            blockSize = stat.getBlockSizeLong();
            totalBlocks = stat.getBlockCountLong();
            availableBlocks = stat.getAvailableBlocksLong();
        }
        else{
            blockSize = stat.getBlockSize();
            totalBlocks = stat.getBlockCount();
            availableBlocks = stat.getAvailableBlocks();
        }

        String text = formatSize(availableBlocks * blockSize);

        TextView tv = (TextView) findViewById(R.id.txtInfo);
        tv.setText(text);
    }

    private String formatSize(long size) {
        return Formatter.formatFileSize(this, size);
    }

    public void readData() {
        // SD卡
//        File file = new File(Environment.getExternalStorageDirectory(), "info.txt");
        File file = new File(getFilesDir(), "info.txt");
        if (file.exists()) {
            FileInputStream fis = null;
            try {
                fis = new FileInputStream(file);
                BufferedReader br = new BufferedReader(new InputStreamReader(fis));
                String line = br.readLine();
                String s[] = line.split("&&");
                txtAccount.setText(s[0]);
                txtPwd.setText(s[1]);
                br.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void loginClick(View v) {
        saveFile();
    }

    // 存储到文件
    public void saveFile() {
        String name = txtAccount.getText().toString();
        String pwd = txtPwd.getText().toString();
        CheckBox cb = (CheckBox)findViewById(R.id.cbData);

        if (cb.isChecked()) {
            // 在外部存储读写文件
//            // MEDIA_REMOVED：sd卡不存在
//            // MEDIA_UNMOUNTED：sd卡存在，但是没有挂载
//            // MEDIA_CHECKING：sd卡正在遍历
//            // MEDIA_MOUNTED：sd卡可用
//            // MEDIA_MOUNTED_READ_ONLY：sd卡可用，但是只读
//            if (Environment.getExternalStorageDirectory().equals(Environment.MEDIA_MOUNTED)) {
//                // 存储SD卡
//                File file = new File(Environment.getExternalStorageDirectory(), "info.txt");
//                FileOutputStream fos = null;
//                try {
//                    fos = new FileOutputStream(file);
//                    fos.write((name + "&&" + pwd).getBytes());
//                    fos.close();
//                } catch (FileNotFoundException e) {
//                    e.printStackTrace();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            } else {
//                Toast t = Toast.makeText(this, "SD卡不可用", 0);
//                t.show();
//            }



            // 在内部存储读写文件
//          File file = new File("data/data/com.example.liupuyan.a04_showdatademo/info.txt");
//          getFilesDir() data/data/com.example.liupuyan.a04_showdatademo/file
//          getCacheDir()
            File file = new File(getFilesDir(), "info.txt");
            FileOutputStream fos = null;
            try {
                fos = new FileOutputStream(file);
                fos.write((name + "&&" + pwd).getBytes());
                fos.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Toast t = Toast.makeText(this, "登录成功", 0);
        t.show();
        System.out.println("---------------------------登录成功");
        Log.d("liu", "--------------------------------------哈哈");
    }

    public void click1(View v) {
        try {
            // data/data/com.example.liupuyan.a04_showdatademo/info1.txt
            FileOutputStream fos = openFileOutput("info1.txt", MODE_PRIVATE);
            fos.write("哈哈哈".getBytes());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
