package com.queqianme.www.wisdomsmsproject.dialog;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.queqianme.www.sms.R;

/**
 * Created by liupuyan on 2017/11/10.
 */

public class InputDialog extends BaseDialog implements View.OnClickListener {

    private TextView txt_title;
    private EditText et_content;
    private Button btn_cancel;
    private Button btn_confirm;
    private String title;
    private String content;
    private OnInputDialogListener onInputDialogListener;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public OnInputDialogListener getOnInputDialogListener() {
        return onInputDialogListener;
    }

    public void setOnInputDialogListener(OnInputDialogListener onInputDialogListener) {
        this.onInputDialogListener = onInputDialogListener;
    }

    protected InputDialog(Context context) {
        super(context);
    }

    @Override
    public void initView() {
        setContentView(R.layout.dialog_input);
        txt_title = (TextView) findViewById(R.id.txt_title);
        et_content = (EditText) findViewById(R.id.et_content);
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
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_cancel:
                if (onInputDialogListener != null) {
                    onInputDialogListener.onCancel();
                }
                break;
            case R.id.btn_confirm:
                if (onInputDialogListener != null) {
                    onInputDialogListener.onConfirm(et_content.getText().toString());
                }
                break;
        }

        dismiss();
    }

    public static void showDialog(Context context, String title, OnInputDialogListener onInputDialogListener) {
        InputDialog dialog = new InputDialog(context);
        dialog.setTitle(title);
        dialog.setOnInputDialogListener(onInputDialogListener);
        // 对话框默认不支持文本输入，手动把一个输入框设置为对话框的内容，Android自动会对其进行设置
        dialog.setView(new EditText(context));
        dialog.show();
    }

    public interface OnInputDialogListener {
        void onCancel();
        void onConfirm(String text);
    }
}
