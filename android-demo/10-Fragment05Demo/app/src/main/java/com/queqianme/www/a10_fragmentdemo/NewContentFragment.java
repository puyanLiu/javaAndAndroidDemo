package com.queqianme.www.a10_fragmentdemo;

import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * Created by liupuyan on 2017/10/9.
 */

public class NewContentFragment extends Fragment {
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fg_content, container, false);
        TextView txt_content = (TextView)view.findViewById(R.id.txt_content);
        // getArgument获取传递过来的Bundle对象
        txt_content.setText(getArguments().getString("content"));
        return view;
    }
}
