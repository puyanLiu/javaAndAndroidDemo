package com.queqianme.www.retrofitdemoproject.network;

import android.app.Activity;

import com.queqianme.www.retrofitdemoproject.ActivityManager;
import com.queqianme.www.retrofitdemoproject.PopupDialog;
import com.queqianme.www.retrofitdemoproject.ToastUtils;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Map;

import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.Buffer;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * Created by liupuyan on 2017/12/26.
 */

public abstract class RequestCallBack1 implements Callback<ResponseBody> {
    @Override
    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
        System.out.println("******************************请求成功");
        BaseResponse1 baseResponse = getBaseResponse(response);
        handleMsg(baseResponse);
    }

    @Override
    public void onFailure(Call<ResponseBody> call, Throwable t) {
        System.out.println("******************************请求失败:" + t.toString());
        BaseResponse1 response = new BaseResponse1();
        response.setError(t.toString());
        onError(response);
    }

    private BaseResponse1 getBaseResponse(Response<ResponseBody> response) {
        BaseResponse1 baseResponse = new BaseResponse1();

        okhttp3.Response raw = response.raw();

        RawResponse rawResponse = new RawResponse();
        rawResponse.setProtocol(raw.protocol().toString());
        rawResponse.setCode(raw.code());
        rawResponse.setMessage(raw.message());
        rawResponse.setUrl(raw.request().url().toString());
        baseResponse.setRawResponse(rawResponse);

        if (response.errorBody() != null) {
            baseResponse.setError(response.errorBody().source().buffer().readUtf8());
        }
        if (response.body() != null) {
            String body = response.body().source().buffer().readUtf8();
            Map<String, Object> result = DataUtils.getMapFromJson(body);
            if (result.get("status") != null) {
                baseResponse.setStatus(Integer.parseInt(result.get("status").toString()));
            }
            if (result.get("des") != null) {
                baseResponse.setStatusDes(result.get("des").toString());
            }

            baseResponse.setResult(result);
        }

        RequestBody requestBody = raw.request().body();
        Buffer buffer = new Buffer();
        try {
            requestBody.writeTo(buffer);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Charset charset = Charset.forName("UTF-8");
        String requestParams = buffer.readString(charset);

        System.out.println("请求链接：" + rawResponse.getUrl() + " 请求参数：" + requestParams + " 请求结果：" + baseResponse);
        return baseResponse;
    }

    private void handleMsg(BaseResponse1 baseResponse) {

        final Activity currentActivity = ActivityManager.getActivityManager().currentActivity();

        if (baseResponse.getStatus() ==  StatusCodeConst.CODE_0){
            onSuccess(baseResponse);
        } else if (baseResponse.getStatus() == StatusCodeConst.NEGATIVE_CODE_103) {
            onError(baseResponse);
            // 令牌过期
            PopupDialog.showDialog(currentActivity, null, "您的账号已在其他设备上登录", "确定", new PopupDialog.OnPopupConfirmDialogListener() {
                @Override
                public void onConfirm() {

                }
            });
        } else {
            onError(baseResponse);
            if (baseResponse.getStatus() == StatusCodeConst.NEGATIVE_CODE_101) {
                ToastUtils.showToast(currentActivity, baseResponse.getStatusDes());
            } else {
                ToastUtils.showToast(currentActivity, baseResponse.getStatusDes());
            }
        }

    }

    protected abstract void onSuccess(BaseResponse1 response);
    protected abstract void onError(BaseResponse1 response);
}
