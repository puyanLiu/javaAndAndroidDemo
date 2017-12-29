package com.queqianme.www.retrofitdemoproject.ref;

import android.app.Activity;
import android.content.Context;

import com.queqianme.www.retrofitdemoproject.ActivityManager;
import com.queqianme.www.retrofitdemoproject.Loading;

import java.util.List;

import retrofit2.Call;

/**
 * Created by liupuyan on 2017/12/25.
 */

public class ServiceHelper {

    private static Loading initLoading(Context context) {

        /**
         * cancel()是按返回键，Loading框关闭的回调，可以做取消加载请求的操作
         */
        return new Loading(context) {
            @Override
            public void cancel() {

            }
        };
    }

    /**
     * 获取单个实体对象
     *
     * @param call
     * @param entityclass 得到的预期结果的对象
     * @param <T>
     */
    public static <T> void callEntity(final Call<BaseResponse> call, final Class<T> entityclass, final OnResponseListener<T> listener, final int actionId) {

        final Activity currentActivity = ActivityManager.getActivityManager().currentActivity();
        final Loading mLoading = initLoading(currentActivity);
        mLoading.show();


        call.enqueue(new RequestCallBack() {
            @Override
            protected void onSucess(String jsonstr) {

                mLoading.dismiss();

                System.out.println("------------------------" + jsonstr);
                T info = GsonHelper.convertEntity(jsonstr, entityclass);
                if (info == null) {
                    if (listener != null) {
                        listener.onClientEror("对象解析失败",actionId);
                    }
                } else {
                    if (listener != null) {
                        System.out.println("===============================" + info);
                        listener.onSuccess(info,actionId);
                    }
                }

            }

            @Override
            protected void onError(String errormsg) {

                mLoading.dismiss();

                if (errormsg != null) {
                    listener.onServerEror(errormsg,actionId);
                }

            }
        });


    }

    public static <T> void callEntities(Call<BaseResponse> call, final Class<T> entityclass , final OnResponseListener<T> lisner, final int actionId){
        call.enqueue(new RequestCallBack() {
            @Override
            protected void onSucess(String jsonstr) {
                List<T> infolist = GsonHelper.convertEntities(jsonstr,entityclass);
                if (infolist == null) {
                    if (lisner != null) {
                        lisner.onClientEror("对象解析失败",actionId);
                    }
                } else {
                    if (lisner != null) {
                        lisner.onSuccess(infolist,actionId);
                    }
                }

            }

            @Override
            protected void onError(String errormsg) {

            }
        });

    }
}
