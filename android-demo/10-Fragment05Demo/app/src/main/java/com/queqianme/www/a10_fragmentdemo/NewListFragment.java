package com.queqianme.www.a10_fragmentdemo;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by liupuyan on 2017/9/28.
 */

public class NewListFragment extends Fragment implements AdapterView.OnItemClickListener {

    private FragmentManager fManager;
    private ArrayList<DataModel> aList;
    private ListView list_news;

    public NewListFragment() {
    }

    public NewListFragment(FragmentManager fManager, ArrayList<DataModel> aList) {
        this.fManager = fManager;
        this.aList = aList;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fg_newlist, container, false);
        list_news = (ListView)view.findViewById(R.id.list_news);
        MyAdapter myAdapter = new MyAdapter(aList, getActivity());
        list_news.setAdapter(myAdapter);
        list_news.setOnItemClickListener(this);
        return view;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        FragmentTransaction fTransaction = fManager.beginTransaction();
        NewContentFragment newContentFragment = new NewContentFragment();
        Bundle bd = new Bundle();
        bd.putString("content", aList.get(i).getNew_content());
        newContentFragment.setArguments(bd);
        // 获取Activity的控件
        TextView txt_title = (TextView)getActivity().findViewById(R.id.txt_title);
        txt_title.setText(aList.get(i).getNew_content());
        // 加上Fragment替换动画
        fTransaction.setCustomAnimations(R.anim.abc_popup_enter, R.anim.abc_popup_exit);
        fTransaction.replace(R.id.fl_content, newContentFragment);
        // 调用addToBackStack将Fragment添加到栈中
        fTransaction.addToBackStack(null);
        fTransaction.commit();
    }
}
