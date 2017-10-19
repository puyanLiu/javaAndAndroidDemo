package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by liupuyan on 2017/10/18.
 */

public class ImageActivity1 extends Activity {

    private Button btn_request;
    private ImageView img_network;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_image1);

        btn_request = (Button)findViewById(R.id.btn_request);
        img_network = (ImageView)findViewById(R.id.img_network);

        // FATAL EXCEPTION: main
        // android.os.NetworkOnMainThreadException
        // 在主线程中请求网络操作，将会抛出此异常，这个设计是为了防止网络请求时间过长而导致界面假死的情况发生
        btn_request.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String path = "http://f.hiphotos.baidu.com/image/pic/item/0824ab18972bd40798becce071899e510fb309b5.jpg";
                try {
                    URL url = new URL(path);
                    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                    connection.setRequestMethod("GET");
                    connection.setConnectTimeout(8000);
                    connection.setReadTimeout(80000);
                    connection.connect();
                    if (connection.getResponseCode() == 200) {
                        InputStream is = connection.getInputStream();
                        Bitmap bm = BitmapFactory.decodeStream(is);
                        img_network.setImageBitmap(bm);
                    } else {
                        Toast.makeText(ImageActivity1.this, "请求不成功", Toast.LENGTH_SHORT).show();
                    }
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        });
    }


}
