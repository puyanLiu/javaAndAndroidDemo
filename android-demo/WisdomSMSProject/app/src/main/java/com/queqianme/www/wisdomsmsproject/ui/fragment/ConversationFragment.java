package com.queqianme.www.wisdomsmsproject.ui.fragment;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;

import com.queqianme.www.sms.R;
import com.queqianme.www.wisdomsmsproject.adapter.ConversationListAdapter;
import com.queqianme.www.wisdomsmsproject.base.BaseFragment;
import com.queqianme.www.wisdomsmsproject.bean.ConversationModel;
import com.queqianme.www.wisdomsmsproject.bean.GroupModel;
import com.queqianme.www.wisdomsmsproject.dao.GroupDao;
import com.queqianme.www.wisdomsmsproject.dao.SimpleQueryHandle;
import com.queqianme.www.wisdomsmsproject.dao.ThreadGroupDao;
import com.queqianme.www.wisdomsmsproject.dialog.ConfirmDialog;
import com.queqianme.www.wisdomsmsproject.dialog.DeleteMsgDialog;
import com.queqianme.www.wisdomsmsproject.dialog.ListDialog;
import com.queqianme.www.wisdomsmsproject.globle.Constant;
import com.queqianme.www.wisdomsmsproject.ui.activity.ConverstaionDetailActivity;
import com.queqianme.www.wisdomsmsproject.ui.activity.NewMsgActivity;
import com.queqianme.www.wisdomsmsproject.utils.ToastUtils;

import java.util.List;

/**
 * Created by liupuyan on 2017/11/7.
 */

public class ConversationFragment extends BaseFragment implements View.OnClickListener {

    private Button btn_new;
    private Button btn_edit;
    private Button btn_select_all;
    private Button btn_cancel_select;
    private Button btn_delete;
    private LinearLayout ll_edit_menu;
    private LinearLayout ll_select_menu;
    private ListView lv_list;
    private ConversationListAdapter adapter;
    private List<Integer> selectedLists;
    private DeleteMsgDialog deleteMsgDialog;

    static final int WHAT_DELETE_COMPLETE = 0;
    static final int WHAT_UPDATE_DELETE_PROGRESS = 1;

    Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case WHAT_DELETE_COMPLETE:
                    // 退出选择模式
                    showEditMenu();

                    // 退出选择模式
                    adapter.setSelectMode(false);
                    adapter.cancelAllSelect();

                    deleteMsgDialog.dismiss();
                    break;
                case WHAT_UPDATE_DELETE_PROGRESS:
                        deleteMsgDialog.updateProgress(msg.arg1);
                    break;
            }
        }
    };

    @Override
    public View initView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_conversation, null);

        btn_new = (Button) view.findViewById(R.id.btn_new);
        btn_edit = (Button) view.findViewById(R.id.btn_edit);
        btn_select_all = (Button) view.findViewById(R.id.btn_select_all);
        btn_cancel_select = (Button) view.findViewById(R.id.btn_cancel_select);
        btn_delete = (Button) view.findViewById(R.id.btn_delete);
        ll_edit_menu = (LinearLayout) view.findViewById(R.id.ll_edit_menu);
        ll_select_menu = (LinearLayout) view.findViewById(R.id.ll_select_menu);

        lv_list = (ListView) view.findViewById(R.id.lv_list);

        return view;
    }

    @Override
    public void initListener() {
        btn_new.setOnClickListener(this);
        btn_edit.setOnClickListener(this);
        btn_select_all.setOnClickListener(this);
        btn_cancel_select.setOnClickListener(this);
        btn_delete.setOnClickListener(this);

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

        // 长按事件
        lv_list.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {

                Cursor cursor = (Cursor)adapter.getItem(position);
                ConversationModel model = ConversationModel.createFromCursor(cursor);

                // 判断选中的会话是否有所属的群组
                if (ThreadGroupDao.hasGroup(getActivity().getContentResolver(), model.getThread_id())) {
                    // 该会话已经添加，弹出退出弹框
                    showExitDialog(model.getThread_id());
                } else {
                    // 该会话没有被添加，列出所有群组添加
                    showSelectGroupDialog(model.getThread_id());
                }

                return true;
            }
        });

    }

    @Override
    public void initData() {
        // 创建CursorAdapter
        adapter = new ConversationListAdapter(getActivity(), null, true);
        lv_list.setAdapter(adapter);

        SimpleQueryHandle queryHandle = new SimpleQueryHandle(getActivity().getContentResolver());
        String[] projection = {
                "sms.body AS snippet",
                "sms.thread_id AS thread_id",
                "groups.msg_count AS msg_count",
                "address AS address",
                "date AS date",
                "_id AS _id"
        };
        queryHandle.startQuery(0, adapter, Constant.URI.SMS_CONVERSATIONS, projection, null, null, "date desc");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_new:
                Intent intent = new Intent(getActivity(), NewMsgActivity.class);
                startActivity(intent);
                break;
            case R.id.btn_edit:
                showSelectMenu();

                // 进入选择模式
                adapter.setSelectMode(true);
                break;
            case R.id.btn_select_all:
                adapter.selectedAll();
                break;
            case R.id.btn_cancel_select:
                showEditMenu();

                // 退出选择模式
                adapter.setSelectMode(false);
                adapter.cancelAllSelect();
                break;
            case R.id.btn_delete:
                selectedLists = adapter.getSelectedLists();
                if (selectedLists.size() == 0)
                    return;
                showDeleteDialog();
                break;
        }
    }

    private void showExitDialog(final int thread_id) {
        final int group_id = ThreadGroupDao.getGroupIdByThreadId(getActivity().getContentResolver(), thread_id);
        // 查询群组名
        String name = GroupDao.getGroupNameByGroupId(getActivity().getContentResolver(), group_id);
        String message = "该会话已经被添加至[" + name + "]群组，是否要退出该群组？";
        ConfirmDialog.showDialog(getActivity(),"提示", message, new ConfirmDialog.OnConfirmDialogListener() {

            @Override
            public void onCancel() {

            }

            @Override
            public void onConfirm() {
                // 把选中的会话从群组中删除
                boolean isSuccess = ThreadGroupDao.deleteThreadGroup(getActivity().getContentResolver(), thread_id, group_id);
                ToastUtils.showToast(getActivity(), isSuccess ? "退出成功" : "退出失败");
            }
        });
    }

    private void showSelectGroupDialog(final int thread_id) {
        final Cursor cursor = getActivity().getContentResolver().query(Constant.URI.GROUPS_QUERY, null, null, null, null);
        if (cursor.getCount() == 0) {
            ToastUtils.showToast(getActivity(), "当前没有群组，请先创建");
            return;
        }
        String[] items = new String[cursor.getCount()];
        while (cursor.moveToNext()) {
            GroupModel model = GroupModel.createFromCursor(cursor);
            items[cursor.getPosition()] = model.getName();
        }

        ListDialog.showDialog(getActivity(), "选择群组", items, new ListDialog.OnListDialogListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

                // 获取群组信息
                cursor.moveToPosition(position);
                GroupModel model = GroupModel.createFromCursor(cursor);
                boolean isSuccess = ThreadGroupDao.insertThreadGroup(getActivity().getContentResolver(), thread_id, model.get_id());
                ToastUtils.showToast(getActivity(), isSuccess ? "插入成功" : "插入失败");
            }
        });
    }

    private void showDeleteDialog() {
        ConfirmDialog.showDialog(getActivity(), "提示", "您真的要删除会话吗？", new ConfirmDialog.OnConfirmDialogListener() {
            @Override
            public void onCancel() {

            }

            @Override
            public void onConfirm() {
                deleteSms();
            }
        });
    }

    boolean isStopDelete = false;
    /**
     * 删除短信
     */
    private void deleteSms() {
        deleteMsgDialog = DeleteMsgDialog.showDialog(getActivity(), selectedLists.size(), new DeleteMsgDialog.OnDeleteDialogListener() {
            @Override
            public void onCancel() {
                isStopDelete = true;
            }
        });

        new Thread(){
            @Override
            public void run() {
                for (int i = 0; i < selectedLists.size(); i++) {
                    try {
                        sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }

                    // 中断删除
                    if (isStopDelete) {
                        isStopDelete = false;
                        break;
                    }

                    String where = "thread_id = " + selectedLists.get(i);
                    getActivity().getContentResolver().delete(Constant.URI.SMS, where, null);

                    // 发送消息
                    Message msg = handler.obtainMessage();
                    msg.what = WHAT_UPDATE_DELETE_PROGRESS;
                    // 把当前删除进度存入消息中
                    msg.arg1 = i;
                    handler.sendMessage(msg);
                }

                // 删除完清空
                selectedLists.clear();
                handler.sendEmptyMessage(WHAT_DELETE_COMPLETE);
            }
        }.start();
    }

    /**
     * 显示编辑菜单 编辑菜单往上移动，选择菜单往下移动
     */
    private void showEditMenu() {
        ll_select_menu.animate().translationY(ll_select_menu.getHeight()).setDuration(200);

        // 延时200毫秒执行run方法
        Handler handler = new Handler();
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                ll_edit_menu.animate().translationY(0).setDuration(200);
            }
        };
        handler.postDelayed(runnable, 200);
    }

    /**
     * 显示全选菜单
     */
    private void showSelectMenu() {
        ll_edit_menu.animate().translationY(ll_edit_menu.getHeight()).setDuration(200);
        // 延时200毫秒执行run方法
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                ll_select_menu.animate().translationY(0).setDuration(200);
            }
        }, 200);
    }
}
