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

public class MyFragment2 extends Fragment {

    public MyFragment2() {
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fg_content, container, false);
        TextView txt_content = (TextView)view.findViewById(R.id.txt_content);
        txt_content.setText("第二个Fragment");
        Log.e("HEHE", "第二个");
        return view;
    }
}
