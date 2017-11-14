package com.queqianme.www.wisdomsmsproject.ui.activity;

import android.content.Intent;
import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.ConversationListAdapter;
import com.queqianme.www.wisdomsmsproject.base.BaseActivity;
import com.queqianme.www.wisdomsmsproject.bean.ConversationModel;
import com.queqianme.www.wisdomsmsproject.dao.SimpleQueryHandle;
import com.queqianme.www.wisdomsmsproject.globle.Constant;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class GroupDetailActivity extends BaseActivity implements View.OnClickListener {

    private TextView iv_titleBar_title;
    private ListView lv_list;
    private ConversationListAdapter adapter;
    private String name;
    private int group_id;

    @Override
    public void initView() {
        setContentView(R.layout.activity_group_detail);
        lv_list = (ListView) findViewById(R.id.lv_list);
    }

    @Override
    public void initTitleBar() {
        ImageView iv_titlebar_back = (ImageView) findViewById(R.id.iv_titlebar_back);
        iv_titlebar_back.setOnClickListener(this);
        iv_titleBar_title = (TextView) findViewById(R.id.iv_titlebar_title);
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
                    Intent intent = new Intent(GroupDetailActivity.this, ConverstaionDetailActivity.class);
                    // 传递数据
                    Cursor cursor = (Cursor) adapter.getItem(position);
                    ConversationModel model = ConversationModel.createFromCursor(cursor);
                    intent.putExtra("address", model.getAddress());
                    intent.putExtra("thread_id", model.getThread_id());
                    startActivity(intent);
                }
            }
        });
    }

    @Override
    public void initData() {
        // 获取传递过来的值
        Intent intent = getIntent();
        if (intent != null) {
            name = intent.getStringExtra("name");
            group_id = intent.getIntExtra("group_id", -1);
        }

        iv_titleBar_title.setText(name );

        // 创建CursorAdapter
        adapter = new ConversationListAdapter(this, null, true);
        lv_list.setAdapter(adapter);

        SimpleQueryHandle queryHandle = new SimpleQueryHandle(getContentResolver());
        String[] projection = {
                "sms.body AS snippet",
                "sms.thread_id AS thread_id",
                "groups.msg_count AS msg_count",
                "address AS address",
                "date AS date",
                "_id AS _id"
        };
        queryHandle.startQuery(0, adapter, Constant.URI.SMS_CONVERSATIONS, projection, buildQuery(), null, "date desc");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.iv_titlebar_back:
                finish();
                break;
        }
    }

    private String buildQuery() {
        Cursor cursor = getContentResolver().query(Constant.URI.THREAD_GROUP_QUERY, new String[]{"thread_id"}, "group_id = " + group_id, null, null);
        String selection = "thread_id in (";
        while (cursor.moveToNext()) {
            if (cursor.isLast()) {
                selection += cursor.getString(0);
            } else {
                selection += cursor.getString(0) + ",";
            }
        }
        selection += ")";
        return selection;
    }
}
