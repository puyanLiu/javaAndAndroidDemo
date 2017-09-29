package com.queqianme.www.a10_fragmentdemo;

import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/9/28.
 */

public class MyFragment extends Fragment {

    private String content;

    public MyFragment() {
    }

    public MyFragment(String content) {
        this.content = content;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fg_content, container, false);
        TextView txt_content = (TextView)view.findViewById(R.id.txt_content);
        txt_content.setText(content);
        return view;
    }
}
