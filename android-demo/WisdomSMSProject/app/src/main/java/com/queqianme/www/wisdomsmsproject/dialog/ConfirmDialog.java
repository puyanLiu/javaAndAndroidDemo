package com.queqianme.www.wisdomsmsproject.dialog;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.queqianme.www.sms.R;

/**
 * Created by liupuyan on 2017/11/9.
 */

public class ConfirmDialog extends BaseDialog implements View.OnClickListener {

    private TextView txt_title;
    private TextView txt_content;
    private Button btn_cancel;
    private Button btn_confirm;
    private String title;
    private String content;
    private OnConfirmDialogListener onConfirmDialogListener;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public OnConfirmDialogListener getOnConfirmDialogListener() {
        return onConfirmDialogListener;
    }

    public void setOnConfirmDialogListener(OnConfirmDialogListener onConfirmDialogListener) {
        this.onConfirmDialogListener = onConfirmDialogListener;
    }

    protected ConfirmDialog(Context context) {
        super(context);
    }

    @Override
    public void initView() {
        setContentView(R.layout.dialog_confirm);

        txt_title = (TextView) findViewById(R.id.txt_title);
        txt_content = (TextView) findViewById(R.id.txt_content);
        btn_cancel = (Button) findViewById(R.id.btn_cancel);
        btn_confirm = (Button) findViewById(R.id.btn_confirm);
    }

    @Override
    public void initListener() {
        btn_cancel.setOnClickListener(this);
        btn_confirm.setOnClickListener(this);
    }

    @Override
    public void initData() {
        txt_title.setText(title);
        txt_content.setText(content);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_cancel:
                if (onConfirmDialogListener != null) {
                    onConfirmDialogListener.onCancel();
                }
                break;
            case R.id.btn_confirm:
                if (onConfirmDialogListener != null) {
                    onConfirmDialogListener.onConfirm();
                }
                break;
        }

        dismiss();
    }

    public static void showDialog(Context context, String title, String content, OnConfirmDialogListener onConfirmDialogListener) {
        ConfirmDialog dialog = new ConfirmDialog(context);
        dialog.setTitle(title);
        dialog.setContent(content);
        dialog.setOnConfirmDialogListener(onConfirmDialogListener);
        dialog.show();
    }

    public interface OnConfirmDialogListener {
        void onCancel();
        void onConfirm();
    }

}
