package com.queqianme.www.okhttpdemoproject;

import android.app.Activity;
import android.content.Context;

import com.google.gson.Gson;

import cn.finalteam.okhttpfinal.BaseHttpRequestCallback;
import cn.finalteam.okhttpfinal.HttpRequest;
import cn.finalteam.okhttpfinal.RequestParams;

/**
 * Created by liupuyan on 2017/12/20.
 */

public class ApiClient {
    public static Gson gson = new Gson();
    private static ApiClient apiClient = new ApiClient();
    private static String qqmClient = "";
    private Loading mLoading;

    private ApiClient() {

    }

    public static ApiClient getInstance() {
        return apiClient;
    }

    private void initLoading(Context context) {

        /**
         * cancel()是按返回键，Loading框关闭的回调，可以做取消加载请求的操作
         */
        mLoading = new Loading(context) {
            @Override
            public void cancel() {

            }
        };
    }

    public void post(final String url, final Params params, final RequestCallBack callBack) {

        final Activity currentActivity = ActivityManager.getActivityManager().currentActivity();
        initLoading(currentActivity);

        System.out.println("******************************开始请求");

        RequestParams p = new RequestParams();
        // 添加Header信息
//        p.addHeader("qqm-client", qqmClient);
        p.applicationJson(params);

        mLoading.show();

        HttpRequest.post(url, p, new BaseHttpRequestCallback<String>() {
            @Override
            protected void onSuccess(String s) {
                super.onSuccess(s);
                mLoading.dismiss();

                System.out.println("******************************请求成功");
                System.out.println("-------请求链接：" + url + "-------请求参数：" + params + "-------请求结果：" + s);

                BaseResult result = ApiClient.gson.fromJson(s, BaseResult.class);
                if (result != null) {
                    if (result.getStatus() == 0) {
                        callBack.onSuccess(s);
                    } else if (result.getStatus() < 0) {
                        if (result.getStatus() == - 103) {
                            // 令牌过期
                            PopupDialog.showDialog(currentActivity, null, "您的账号已在其它设备上登录", "确定", new PopupDialog.OnPopupConfirmDialogListener() {
                                @Override
                                public void onConfirm() {

                                }
                            });
                        } else {
                            ToastUtils.showToast(currentActivity, result.getDes());
                        }
                    } else if (result.getStatus() > 0) {

                    }
                    return;
                }

                callBack.onSuccess(s);
            }

            @Override
            public void onFailure(int errorCode, String msg) {
                super.onFailure(errorCode, msg);
                mLoading.dismiss();

                System.out.println("******************************请求失败");
                System.out.println("-------请求链接：" + url + "-------请求参数：" + params + "-------请求结果：" + errorCode + "-----" + msg);
                if (errorCode == BaseHttpRequestCallback.ERROR_RESPONSE_UNKNOWN) {
                    msg = "网络异常，请检查网络后重试";
                }
                if (callBack != null) {
                    callBack.onFailure(errorCode, msg);
                }
            }
        });
    }

    public interface RequestCallBack {
        void onSuccess(String data);

        void onFailure(int errCode, String msg);
    }
}
