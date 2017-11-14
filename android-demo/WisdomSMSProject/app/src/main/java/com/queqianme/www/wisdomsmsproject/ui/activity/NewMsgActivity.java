package com.queqianme.www.wisdomsmsproject.ui.activity;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.FilterQueryProvider;
import android.widget.ImageView;
import android.widget.TextView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.AutoSearchAdapter;
import com.queqianme.www.wisdomsmsproject.base.BaseActivity;
import com.queqianme.www.wisdomsmsproject.dao.SmsDao;
import com.queqianme.www.wisdomsmsproject.utils.CursorUtils;
import com.queqianme.www.wisdomsmsproject.utils.LogUtils;
import com.queqianme.www.wisdomsmsproject.utils.ToastUtils;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class NewMsgActivity extends BaseActivity implements View.OnClickListener {

    private AutoCompleteTextView actv_phone;
    private ImageView iv_select_contact;
    private TextView et_content;
    private Button btn_send;
    private TextView iv_titleBar_title;
    private AutoSearchAdapter adapter;

    @Override
    public void initView() {
        setContentView(R.layout.activity_new_msg);

        actv_phone = (AutoCompleteTextView) findViewById(R.id.actv_phone);
        iv_select_contact = (ImageView) findViewById(R.id.iv_select_contact);
        et_content = (TextView) findViewById(R.id.et_content);
        btn_send = (Button) findViewById(R.id.btn_send);

        // 下拉列表的背景
        actv_phone.setDropDownBackgroundResource(R.mipmap.bg_btn_normal);

        // 下拉列表的竖直偏移
        actv_phone.setDropDownVerticalOffset(5);
    }

    @Override
    public void initTitleBar() {
        ImageView iv_titlebar_back = (ImageView) findViewById(R.id.iv_titlebar_back);
        iv_titlebar_back.setOnClickListener(this);
        iv_titleBar_title = (TextView) findViewById(R.id.iv_titlebar_title);
        iv_titleBar_title.setText("发送短信");
    }

    @Override
    public void initListener() {
        btn_send.setOnClickListener(this);
        iv_select_contact.setOnClickListener(this);
    }

    @Override
    public void initData() {
        adapter = new AutoSearchAdapter(this, null, true);
        actv_phone.setAdapter(adapter);

        adapter.setFilterQueryProvider(new FilterQueryProvider() {
            @Override
            public Cursor runQuery(CharSequence constraint) {
                String[] projection = {
                        "data1",
                        "display_name",
                        "_id"
                };
                // 模糊查询
                String selection = "data1 like '%" + constraint + "%'";
                Cursor cursor = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, projection, selection, null, null);
                CursorUtils.printCursor(cursor);

                return cursor;
            }
        });
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.iv_titlebar_back:
                finish();
                break;
            case R.id.iv_select_contact:
                // 跳转至系统提供的联系人选择Activity
                Intent intent = new Intent(Intent.ACTION_PICK);
                intent.setType("vnd.android.cursor.dir/contact");
                startActivityForResult(intent, 0);
                break;
            case R.id.btn_send:
                String address = actv_phone.getText().toString();
                String body = et_content.getText().toString();
                if (!TextUtils.isEmpty(body) && !TextUtils.isEmpty(address)) {
                    // 发送短信
                    SmsDao.sendSms(this, address, body);
                    finish();
                }
                break;
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        LogUtils.i(this, data.getDataString());

        // data中会携带一个uri，就是用户选择的联系人的uri
        Uri uri = data.getData();
        if (uri != null) {
            // 查询这个uri，获取联系人的id和是否有号码
            String[] projection = {
                    "_id",
                    "has_phone_number"
            };
            Cursor cursor = getContentResolver().query(uri, projection, null, null, null);
            // 不需要判断是否查到，但必须移动指针
            cursor.moveToFirst();
            String _id = cursor.getString(0);
            int has_phone_number = cursor.getInt(1);
            if (has_phone_number == 0) {
                ToastUtils.showToast(this, "该联系人没有号码");
            } else {
                String selection = "contact_id = " + _id;
                Cursor cursor2 = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data1"}, selection, null, null);
                cursor2.moveToFirst();
                String data1 = cursor2.getString(0);
                actv_phone.setText(data1);
                // 内容框获得焦点
                et_content.requestFocus();
            }
        }
    }
}
