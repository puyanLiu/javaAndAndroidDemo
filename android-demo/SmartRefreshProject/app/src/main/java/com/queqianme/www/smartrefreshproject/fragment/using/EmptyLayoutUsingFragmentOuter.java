package com.queqianme.www.smartrefreshproject.fragment.using;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;

import com.queqianme.www.smartrefreshproject.R;
import com.queqianme.www.smartrefreshproject.activity.FragmentActivity;
import com.queqianme.www.smartrefreshproject.adapter.BaseRecyclerAdapter;
import com.queqianme.www.smartrefreshproject.adapter.SmartViewHolder;
import com.queqianme.www.smartrefreshproject.fragment.using.EmptyLayoutUsingFragment.Item;
import com.queqianme.www.refresh_layout.api.RefreshLayout;
import com.queqianme.www.refresh_layout.listener.OnRefreshListener;

import java.util.Arrays;

import static android.R.layout.simple_list_item_2;
import static android.support.v7.widget.DividerItemDecoration.VERTICAL;
import static com.queqianme.www.smartrefreshproject.R.id.recyclerView;
import static com.queqianme.www.smartrefreshproject.R.id.refreshLayout;

/**
 * 使用示例-空布页面
 * A simple {@link Fragment} subclass.
 */
public class EmptyLayoutUsingFragmentOuter extends Fragment implements AdapterView.OnItemClickListener, OnRefreshListener {

    private View mEmptyLayout;
    private RecyclerView mRecyclerView;
    private RefreshLayout mRefreshLayout;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_using_emptylayout_outer, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View root, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(root, savedInstanceState);

        final Toolbar toolbar = (Toolbar)root.findViewById(R.id.toolbar);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getActivity().finish();
            }
        });

        mRefreshLayout = (RefreshLayout) root.findViewById(refreshLayout);
        mRefreshLayout.setOnRefreshListener(this);

        mRecyclerView = (RecyclerView) root.findViewById(recyclerView);
        mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        mRecyclerView.addItemDecoration(new DividerItemDecoration(getContext(), VERTICAL));

        mEmptyLayout = root.findViewById(R.id.empty);

        ImageView image = (ImageView) root.findViewById(R.id.empty_image);
        image.setImageResource(R.drawable.ic_empty);

        TextView empty = (TextView) root.findViewById(R.id.empty_text);
        empty.setText("暂无数据点击刷新");

        ((View)empty.getParent()).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onRefresh(null);
            }
        });

    }

    @Override
    public void onRefresh(RefreshLayout refreshlayout) {
        mRefreshLayout.getLayout().postDelayed(new Runnable() {
            @Override
            public void run() {
                mRecyclerView.setAdapter(new BaseRecyclerAdapter<Item>(Arrays.asList(Item.values()), simple_list_item_2, EmptyLayoutUsingFragmentOuter.this) {
                    @Override
                    protected void onBindViewHolder(SmartViewHolder holder, Item model, int position) {
                        holder.text(android.R.id.text1, model.name());
                        holder.text(android.R.id.text2, model.name);
                        holder.textColorId(android.R.id.text2, R.color.colorTextAssistant);
                    }
                });
                mRefreshLayout.finishRefresh();
                mEmptyLayout.setVisibility(View.GONE);
            }
        }, refreshlayout != null ? 2000 : 0);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        Item item = Item.values()[position];
        if (Activity.class.isAssignableFrom(item.clazz)) {
            startActivity(new Intent(getContext(), item.clazz));
        } else if (Fragment.class.isAssignableFrom(item.clazz)) {
            FragmentActivity.start(this, item.clazz);
        }
    }
}
