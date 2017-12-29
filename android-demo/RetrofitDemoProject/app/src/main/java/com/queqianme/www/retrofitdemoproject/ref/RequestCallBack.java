package com.queqianme.www.retrofitdemoproject.ref;

import android.app.Activity;

import com.queqianme.www.retrofitdemoproject.ActivityManager;
import com.queqianme.www.retrofitdemoproject.ToastUtils;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * Created by liupuyan on 2017/12/25.
 */

public abstract class RequestCallBack implements Callback<BaseResponse> {
    public final int RESPONSE_SUCESS=0;
    public final int RESPONSE_FAIL = 1;

    @Override
    public void onResponse(Call<BaseResponse> call, Response<BaseResponse> response) {
        BaseResponse baseResponse = response.body();
        System.out.println("==============onResponse");
        handleMsg(baseResponse);
    }

    @Override
    public void onFailure(Call<BaseResponse> call, Throwable t) {
        onError(t.getMessage());
    }

    private void handleMsg(BaseResponse baseResponse) {

        final Activity currentActivity = ActivityManager.getActivityManager().currentActivity();

        if (baseResponse.getStatus()==(RESPONSE_SUCESS)){
            onSucess(GsonHelper.objectToJSONString(baseResponse.getResult()));//要根据具体的接口结构进行相应的修改
        } else{

            System.out.println("==============handleMsg" + baseResponse.getDes());
            onError(baseResponse.getDes());
            ToastUtils.showToast(currentActivity, baseResponse.getDes());
        }

    }

    protected abstract void onSucess(String jsonstr);
    protected abstract void onError(String errormsg);
}
