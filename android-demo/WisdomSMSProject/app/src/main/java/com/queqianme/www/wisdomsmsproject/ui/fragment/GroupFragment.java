package com.queqianme.www.wisdomsmsproject.ui.fragment;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.GroupListAdapter;
import com.queqianme.www.wisdomsmsproject.base.BaseFragment;
import com.queqianme.www.wisdomsmsproject.bean.GroupModel;
import com.queqianme.www.wisdomsmsproject.dao.GroupDao;
import com.queqianme.www.wisdomsmsproject.dao.SimpleQueryHandle;
import com.queqianme.www.wisdomsmsproject.dialog.ConfirmDialog;
import com.queqianme.www.wisdomsmsproject.dialog.InputDialog;
import com.queqianme.www.wisdomsmsproject.dialog.ListDialog;
import com.queqianme.www.wisdomsmsproject.globle.Constant;
import com.queqianme.www.wisdomsmsproject.ui.activity.GroupDetailActivity;
import com.queqianme.www.wisdomsmsproject.utils.ToastUtils;

/**
 * Created by liupuyan on 2017/11/7.
 */

public class GroupFragment extends BaseFragment implements View.OnClickListener {

    private Button btn_new_group;
    private ListView lv_list;
    private GroupListAdapter adapter;

    @Override
    public View initView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_group, null);
        btn_new_group = (Button) view.findViewById(R.id.btn_new_group);
        lv_list = (ListView) view.findViewById(R.id.lv_list);
        return view;
    }

    @Override
    public void initListener() {
        btn_new_group.setOnClickListener(this);

        lv_list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Cursor cursor = (Cursor) adapter.getItem(position);
                GroupModel model = GroupModel.createFromCursor(cursor);
                if (model.getThread_count() > 0) {
                    Intent intent = new Intent(getActivity(), GroupDetailActivity.class);
                    intent.putExtra("name", model.getName());
                    intent.putExtra("group_id", model.get_id());
                    startActivity(intent);
                } else {
                    ToastUtils.showToast(getActivity(), "当前群组没有任何会话");
                }
            }
        });

        lv_list.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                Cursor cursor = (Cursor) adapter.getItem(position);
                final GroupModel model = GroupModel.createFromCursor(cursor);
                ListDialog.showDialog(getActivity(), "选项", new String[]{"修改", "删除"}, new ListDialog.OnListDialogListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        switch (position) {
                            case 0:
                                // 修改
                                InputDialog.showDialog(getActivity(), "修改群组", new InputDialog.OnInputDialogListener() {
                                    @Override
                                    public void onCancel() {

                                    }

                                    @Override
                                    public void onConfirm(String text) {
                                        if (!TextUtils.isEmpty(text)) {
                                            GroupDao.updateGroup(getActivity().getContentResolver(), text, model.get_id());
                                        } else {
                                            ToastUtils.showToast(getActivity(), "群组名不能为空");
                                        }
                                    }
                                });
                                break;
                            case 1:
                                // 删除
                                ConfirmDialog.showDialog(getActivity(), "提示", "您真的要删除吗？", new ConfirmDialog.OnConfirmDialogListener() {
                                    @Override
                                    public void onCancel() {

                                    }

                                    @Override
                                    public void onConfirm() {
                                        GroupDao.deleteGroup(getActivity().getContentResolver(), model.get_id());
                                    }
                                });
                                break;
                        }
                    }
                });
                return true;
            }
        });
    }

    @Override
    public void initData() {
        adapter = new GroupListAdapter(getActivity(), null, true);
        lv_list.setAdapter(adapter);

        SimpleQueryHandle queryHandle = new SimpleQueryHandle(getActivity().getContentResolver());
        queryHandle.startQuery(0, adapter, Constant.URI.GROUPS_QUERY, null, null, null, "create_date desc");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_new_group:
                showNewGroup();
                break;
        }
    }

    private void showNewGroup() {
        InputDialog.showDialog(getActivity(), "创建群组", new InputDialog.OnInputDialogListener() {
            @Override
            public void onCancel() {

            }

            @Override
            public void onConfirm(String text) {
                if (!TextUtils.isEmpty(text)) {
                    GroupDao.insertGroup(getActivity().getContentResolver(), text);
                } else {
                    ToastUtils.showToast(getActivity(), "群组名不能为空");
                }
            }
        });
    }
}
