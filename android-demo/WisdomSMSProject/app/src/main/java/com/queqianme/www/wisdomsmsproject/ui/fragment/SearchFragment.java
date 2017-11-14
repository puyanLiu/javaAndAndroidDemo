package com.queqianme.www.wisdomsmsproject.ui.fragment;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.ConversationListAdapter;
import com.queqianme.www.wisdomsmsproject.base.BaseFragment;
import com.queqianme.www.wisdomsmsproject.bean.ConversationModel;
import com.queqianme.www.wisdomsmsproject.dao.SimpleQueryHandle;
import com.queqianme.www.wisdomsmsproject.globle.Constant;
import com.queqianme.www.wisdomsmsproject.ui.activity.ConverstaionDetailActivity;
import com.queqianme.www.wisdomsmsproject.utils.InputUtils;

/**
 * Created by liupuyan on 2017/11/7.
 */

public class SearchFragment extends BaseFragment {

    private EditText et_search;
    private ListView lv_list;
    private ConversationListAdapter adapter;
    private SimpleQueryHandle queryHandle;

    String[] projection = {
            "sms.body AS snippet",
            "sms.thread_id AS thread_id",
            "groups.msg_count AS msg_count",
            "address AS address",
            "date AS date",
            "_id AS _id"
    };

    @Override
    public View initView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_search, null);

        lv_list = (ListView) view.findViewById(R.id.lv_list);
        et_search = (EditText) view.findViewById(R.id.et_search);

        return view;
    }

    @Override
    public void initListener() {
        // 点击事件
        lv_list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (adapter.isSelectMode()) {
                    // 选择模式
                    adapter.selectSingle(position);
                } else {
                    // 进入详情页
                    Intent intent = new Intent(getActivity(), ConverstaionDetailActivity.class);
                    // 传递数据
                    Cursor cursor = (Cursor) adapter.getItem(position);
                    ConversationModel model = ConversationModel.createFromCursor(cursor);
                    intent.putExtra("address", model.getAddress());
                    intent.putExtra("thread_id", model.getThread_id());
                    startActivity(intent);
                }
            }
        });

        lv_list.setOnScrollListener(new AbsListView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(AbsListView view, int scrollState) {
                // 滑动键盘消失
                InputUtils.hideInput(getActivity());
            }

            @Override
            public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            }
        });

        et_search.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                queryHandle.startQuery(0, adapter, Constant.URI.SMS_CONVERSATIONS, projection, "body like '%" + s + "%'", null, "date desc");
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });
    }

    @Override
    public void initData() {
        // 创建CursorAdapter
        adapter = new ConversationListAdapter(getActivity(), null, true);
        lv_list.setAdapter(adapter);

        queryHandle = new SimpleQueryHandle(getActivity().getContentResolver());
    }
}
