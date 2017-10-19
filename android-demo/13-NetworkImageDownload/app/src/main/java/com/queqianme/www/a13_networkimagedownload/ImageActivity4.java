package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;

import com.loopj.android.image.SmartImageView;

/**
 * Created by liupuyan on 2017/10/18.
 */

public class ImageActivity4 extends Activity {

    private Button btn_request;
    private SmartImageView img_network;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_image4);

        btn_request = (Button)findViewById(R.id.btn_request);
        img_network = (SmartImageView)findViewById(R.id.img_network);

        btn_request.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // 请求网络图片
                final String path = "http://f.hiphotos.baidu.com/image/pic/item/0824ab18972bd40798becce071899e510fb309b5.jpg";
                img_network.setImageUrl(path);
            }
        });
    }

    private String getNameFromPath(String path) {
        return path.substring(path.lastIndexOf("/") + 1);
    }


}
