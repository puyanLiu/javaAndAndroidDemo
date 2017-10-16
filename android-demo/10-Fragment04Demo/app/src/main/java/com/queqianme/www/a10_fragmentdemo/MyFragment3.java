package com.queqianme.www.a10_fragmentdemo;

import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/9/28.
 */

public class MyFragment3 extends Fragment {

    public MyFragment3() {
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fg_content, container, false);
        TextView txt_content = (TextView)view.findViewById(R.id.txt_content);
        txt_content.setText("第三个Fragment");
        Log.e("HEHE", "第三个");
        return view;
    }
}
