package com.queqianme.www.retrofitdemoproject;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.OnClick;

/**
 * Created by liupuyan on 2017/11/22.
 */

public class PopupDialog extends BaseDialog {

    @BindView(R.id.txt_title)
    TextView txtTitle;
    @BindView(R.id.txt_content)
    TextView txtContent;
    @BindView(R.id.btn_cancel)
    Button btnCancel;
    @BindView(R.id.btn_confirm)
    Button btnConfirm;

    private String title;
    private String content;
    private String contentHtml;
    private String leftButtonText;
    private String rightButtonText;
    private OnPopupConfirmDialogListener onPopupConfirmDialogListener;
    private OnPopupDialogListener onPopupDialogListener;

    protected PopupDialog(Context context) {
        super(context);
    }

    @Override
    public int getContentLayoutId() {
        return R.layout.dialog_popup;
    }

    @Override
    public void initData() {
        if (title != null) {
            txtTitle.setVisibility(View.VISIBLE);
            txtTitle.setText(title);
        } else {
            txtTitle.setVisibility(View.GONE);
            txtTitle.setText(title);
        }
        if (content != null) {
            txtContent.setText(content);
        } else if (contentHtml != null) {
            if (Build.VERSION.SDK_INT > Build.VERSION_CODES.M) {
                txtContent.setText(Html.fromHtml(contentHtml, Html.FROM_HTML_MODE_LEGACY));
            } else {
                txtContent.setText(Html.fromHtml(contentHtml));
            }
        }
        if (leftButtonText != null) {
            btnCancel.setVisibility(View.VISIBLE);
            btnCancel.setText(leftButtonText);
        } else {
            btnCancel.setVisibility(View.GONE);
        }
        if (rightButtonText != null)
            btnConfirm.setText(rightButtonText);
    }

    @OnClick({R.id.btn_cancel, R.id.btn_confirm})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btn_cancel:
                if (onPopupDialogListener != null) {
                    onPopupDialogListener.onCancel();
                }
                break;
            case R.id.btn_confirm:
                if (onPopupDialogListener != null) {
                    onPopupDialogListener.onConfirm();
                } else if (onPopupConfirmDialogListener != null) {
                    onPopupConfirmDialogListener.onConfirm();
                }
                break;
        }
        dismiss();
    }

    /**
     * 两个按钮
     * @param context
     * @param title
     * @param content
     * @param cancelText
     * @param confirmText
     * @param onPopupDialogListener
     * @return
     */
    public static PopupDialog showDialog(Context context, String title, String content, String cancelText, String confirmText, OnPopupDialogListener onPopupDialogListener) {
        PopupDialog dialog = new PopupDialog(context);
        dialog.setTitle(title);
        dialog.setContent(content);
        dialog.setLeftButtonText(cancelText != null ? cancelText : "取消");
        dialog.setRightButtonText(confirmText != null ? confirmText : "确定");
        dialog.setOnPopupDialogListener(onPopupDialogListener);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        return dialog;
    }

    /**
     * 一个按钮
     * @param context
     * @param title
     * @param content
     * @param confirmText
     * @param onPopupConfirmDialogListener
     * @return
     */
    public static PopupDialog showDialog(Context context, String title, String content, String confirmText, OnPopupConfirmDialogListener onPopupConfirmDialogListener) {
        PopupDialog dialog = new PopupDialog(context);
        dialog.setTitle(title);
        dialog.setContent(content);
        dialog.setRightButtonText(confirmText != null ? confirmText : "确定");
        dialog.setOnPopupConfirmDialogListener(onPopupConfirmDialogListener);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        return dialog;
    }

    /**
     * 一个按钮 提示知道了
     * @param context
     * @param content
     * @return
     */
    public static PopupDialog showDialogKnow(Context context, String content) {
        PopupDialog dialog = new PopupDialog(context);
        dialog.setTitle("温馨提示");
        dialog.setContent(content);
        dialog.setRightButtonText("知道了");
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        return dialog;
    }

    public static PopupDialog showDialogHTML(Context context, String title, String contentHtml, String cancelText, String confirmText, OnPopupDialogListener onPopupDialogListener) {
        PopupDialog dialog = new PopupDialog(context);
        dialog.setTitle(title);
        dialog.setContentHtml(contentHtml);
        dialog.setLeftButtonText(cancelText != null ? cancelText : "取消");
        dialog.setRightButtonText(confirmText != null ? confirmText : "确定");
        dialog.setOnPopupDialogListener(onPopupDialogListener);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        return dialog;
    }

    public static PopupDialog showDialogHTML(Context context, String title, String contentHtml, String confirmText, OnPopupConfirmDialogListener onPopupConfirmDialogListener) {
        PopupDialog dialog = new PopupDialog(context);
        dialog.setTitle(title);
        dialog.setContentHtml(contentHtml);
        dialog.setRightButtonText(confirmText != null ? confirmText : "确定");
        dialog.setOnPopupConfirmDialogListener(onPopupConfirmDialogListener);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        return dialog;
    }

    public void setLeft() {
        txtContent.setGravity(Gravity.LEFT);
    }

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

    public String getContentHtml() {
        return contentHtml;
    }

    public void setContentHtml(String contentHtml) {
        this.contentHtml = contentHtml;
    }

    public String getLeftButtonText() {
        return leftButtonText;
    }

    public void setLeftButtonText(String leftButtonText) {
        this.leftButtonText = leftButtonText;
    }

    public String getRightButtonText() {
        return rightButtonText;
    }

    public void setRightButtonText(String rightButtonText) {
        this.rightButtonText = rightButtonText;
    }

    public PopupDialog setContentGravity(int contentGravity) {
        txtContent.setGravity(contentGravity);
        return this;
    }

    public PopupDialog setTitleSize(float size) {
        txtTitle.setTextSize(size);
        return this;
    }

    public PopupDialog setContentColor(int color) {
        txtContent.setTextColor(color);
        return this;
    }

    public void setOnPopupConfirmDialogListener(OnPopupConfirmDialogListener onPopupConfirmDialogListener) {
        this.onPopupConfirmDialogListener = onPopupConfirmDialogListener;
    }

    public void setOnPopupDialogListener(OnPopupDialogListener onPopupDialogListener) {
        this.onPopupDialogListener = onPopupDialogListener;
    }

    public interface OnPopupConfirmDialogListener {
        void onConfirm();
    }

    public class OnPopupConfirmDialogListenerAdapter implements OnPopupConfirmDialogListener {
        @Override
        public void onConfirm() {

        }
    }

    public interface OnPopupDialogListener {
        void onConfirm();
        void onCancel();
    }


    public class OnPopupDialogListenerAdapter implements OnPopupDialogListener {
        @Override
        public void onConfirm() {

        }

        @Override
        public void onCancel() {

        }
    }
    
}
