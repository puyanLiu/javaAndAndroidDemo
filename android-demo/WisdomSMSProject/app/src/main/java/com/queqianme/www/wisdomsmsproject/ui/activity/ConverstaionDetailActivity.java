package com.queqianme.www.wisdomsmsproject.ui.activity;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.ConversationDetailAdapter;
import com.queqianme.www.wisdomsmsproject.base.BaseActivity;
import com.queqianme.www.wisdomsmsproject.dao.ContactDao;
import com.queqianme.www.wisdomsmsproject.dao.SimpleQueryHandle;
import com.queqianme.www.wisdomsmsproject.dao.SmsDao;
import com.queqianme.www.wisdomsmsproject.globle.Constant;
import com.queqianme.www.wisdomsmsproject.utils.InputUtils;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class ConverstaionDetailActivity extends BaseActivity implements View.OnClickListener {

    private EditText et_content;
    private Button btn_send;
    private TextView iv_titleBar_title;
    private String address;
    private int thread_id;
    private ListView lv_list;
    private ConversationDetailAdapter adapter;

    @Override
    public void initView() {
        setContentView(R.layout.activity_conversation_detail);

        et_content = (EditText) findViewById(R.id.et_content);
        btn_send = (Button) findViewById(R.id.btn_send);
        lv_list = (ListView) findViewById(R.id.lv_list);

        // listView刷新就会滑动
        lv_list.setTranscriptMode(AbsListView.TRANSCRIPT_MODE_ALWAYS_SCROLL);
    }

    @Override
    public void initTitleBar() {
        ImageView iv_titlebar_back = (ImageView) findViewById(R.id.iv_titlebar_back);
        iv_titlebar_back.setOnClickListener(this);
        iv_titleBar_title = (TextView) findViewById(R.id.iv_titlebar_title);
    }

    @Override
    public void initListener() {
        btn_send.setOnClickListener(this);

        lv_list.setOnScrollListener(new AbsListView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(AbsListView view, int scrollState) {
                // 滑动键盘消失
                InputUtils.hideInput(ConverstaionDetailActivity.this);
            }

            @Override
            public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            }
        });
    }

    @Override
    public void initData() {
        // 获取传递过来的值
        Intent intent = getIntent();
        if (intent != null) {
            address = intent.getStringExtra("address");
            thread_id = intent.getIntExtra("thread_id", -1);
        }
        String name = ContactDao.getNameByAddress(getContentResolver(), address);
        iv_titleBar_title.setText(TextUtils.isEmpty(name) ? address : name);

        // 查询列表数据
        // 创建CursorAdapter
        adapter = new ConversationDetailAdapter(this, null, true, lv_list);
        lv_list.setAdapter(adapter);

        SimpleQueryHandle queryHandle = new SimpleQueryHandle(getContentResolver());
        String[] projection = {
                "_id",
                "body",
                "type",
                "date",
        };
        queryHandle.startQuery(0, adapter, Constant.URI.SMS, projection, "thread_id = " + thread_id , null, "date");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.iv_titlebar_back:
                finish();
                break;
            case R.id.btn_send:
                String body = et_content.getText().toString();
                if (!TextUtils.isEmpty(body)) {
                    // 发送短信
                    SmsDao.sendSms(this, address, body);
                    et_content.setText("");
                }
                break;
        }
    }
}
