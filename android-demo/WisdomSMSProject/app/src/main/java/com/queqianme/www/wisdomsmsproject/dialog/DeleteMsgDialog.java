package com.queqianme.www.wisdomsmsproject.dialog;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.queqianme.www.sms.R;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class DeleteMsgDialog extends BaseDialog implements View.OnClickListener {

    private TextView txt_title;
    private Button btn_cancel;
    private int maxProgress;
    private OnDeleteDialogListener onDeleteDialogListener;
    private ProgressBar pb_progress;

    public int getMaxProgress() {
        return maxProgress;
    }

    public void setMaxProgress(int maxProgress) {
        this.maxProgress = maxProgress;
    }

    public OnDeleteDialogListener getOnDeleteDialogListener() {
        return onDeleteDialogListener;
    }

    public void setOnDeleteDialogListener(OnDeleteDialogListener onDeleteDialogListener) {
        this.onDeleteDialogListener = onDeleteDialogListener;
    }

    protected DeleteMsgDialog(Context context) {
        super(context);
    }

    @Override
    public void initView() {
        setContentView(R.layout.dialog_delete);

        txt_title = (TextView) findViewById(R.id.txt_title);
        btn_cancel = (Button) findViewById(R.id.btn_cancel);
        pb_progress = (ProgressBar) findViewById(R.id.pb_progress);
    }

    @Override
    public void initListener() {
        btn_cancel.setOnClickListener(this);
    }

    @Override
    public void initData() {
        txt_title.setText("正在删除(0/" + maxProgress + ")");
        // 给进度条设置最大值
        pb_progress.setMax(maxProgress);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_cancel:
                if (onDeleteDialogListener != null) {
                    onDeleteDialogListener.onCancel();
                }
                break;
        }

        dismiss();
    }

    public static DeleteMsgDialog showDialog(Context context, int maxProgress, OnDeleteDialogListener onDeleteDialogListener) {
        DeleteMsgDialog dialog = new DeleteMsgDialog(context);
        dialog.setMaxProgress(maxProgress);
        dialog.setOnDeleteDialogListener(onDeleteDialogListener);
        dialog.show();
        return dialog;
    }

    /**
     * 更新进度条和标题
     * @param progress
     */
    public void updateProgress(int progress) {
        pb_progress.setProgress(progress);
        txt_title.setText("正在删除(" + (progress + 1) + "/" + maxProgress + ")");
    }


    public interface OnDeleteDialogListener {
        void onCancel();
    }
}
