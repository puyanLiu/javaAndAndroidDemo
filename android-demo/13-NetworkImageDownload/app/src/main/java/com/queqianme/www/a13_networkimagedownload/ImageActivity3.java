package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by liupuyan on 2017/10/18.
 */

public class ImageActivity3 extends Activity {

    private Button btn_request;
    private ImageView img_network;

    Handler handle = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    img_network.setImageBitmap((Bitmap)msg.obj);
                    break;
                case 2:
                    Toast.makeText(ImageActivity3.this, "请求不成功", Toast.LENGTH_SHORT).show();
                    break;
            }
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_image3);

        btn_request = (Button)findViewById(R.id.btn_request);
        img_network = (ImageView)findViewById(R.id.img_network);

        // FATAL EXCEPTION: main
        // android.os.NetworkOnMainThreadException
        // 在主线程中请求网络操作，将会抛出此异常，这个设计是为了防止网络请求时间过长而导致界面假死的情况发生

        // 使用线程来操作网络请求
        // java.lang.SecurityException: Permission denied (missing INTERNET permission?)
        // AndroidManifest.xml 添加 <uses-permission android:name="android.permission.INTERNET" />
        // android.view.ViewRootImpl$CalledFromWrongThreadException: Only the original thread that created a view hierarchy can touch its views.
        // 刷新UI在主线程

        // 缓存到本地
        btn_request.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String path = "http://f.hiphotos.baidu.com/image/pic/item/0824ab18972bd40798becce071899e510fb309b5.jpg";
                final File file = new File(getCacheDir(), getNameFromPath(path));
                if (file.exists()) {
                    // 存在
                    Log.i("A", "从缓存读取");
                    Bitmap bm = BitmapFactory.decodeFile(file.getAbsolutePath());
                    Message message = new Message();
                    message.obj = bm;
                    // 成功
                    message.what = 1;
                    handle.sendMessage(message);

//                    img_network.setImageBitmap(bm);
                    return;
                }
                Log.i("A", "网络请求");
                Thread t = new Thread(){
                    @Override
                    public void run() {
                        try {
                            URL url = new URL(path);
                            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                            connection.setRequestMethod("GET");
                            connection.setConnectTimeout(8000);
                            connection.setReadTimeout(80000);
                            connection.connect();
                            if (connection.getResponseCode() == 200) {
                                InputStream is = connection.getInputStream();

                                // 缓存
                                FileOutputStream fos = new FileOutputStream(file.getAbsoluteFile());
                                byte[] b = new byte[1024];
                                int len;
                                while ((len = is.read(b)) != -1) {
                                    fos.write(b, 0, len);
                                }
                                fos.close();

                                Bitmap bm = BitmapFactory.decodeFile(file.getAbsolutePath());

                                Message message = new Message();
                                message.obj = bm;
                                // 成功
                                message.what = 1;
                                handle.sendMessage(message);

                                // 刷新UI在主线程处理
//                                img_network.setImageBitmap(bm);
                            } else {

                                Log.i("A", "进来");

                                handle.sendEmptyMessage(2);

                                // 在主线程处理
//                              Toast.makeText(ImageActivity2.this, "请求不成功", Toast.LENGTH_SHORT).show();
                            }
                        } catch (MalformedURLException e) {
                            e.printStackTrace();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                };

                // 线程开始
                t.start();
            }
        });
    }

    private String getNameFromPath(String path) {
        return path.substring(path.lastIndexOf("/") + 1);
    }


}
