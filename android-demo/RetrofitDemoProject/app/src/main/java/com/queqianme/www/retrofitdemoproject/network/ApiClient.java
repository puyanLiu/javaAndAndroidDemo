package com.queqianme.www.retrofitdemoproject.network;

import android.app.Activity;
import android.content.Context;

import com.queqianme.www.retrofitdemoproject.ActivityManager;
import com.queqianme.www.retrofitdemoproject.Loading;
import com.queqianme.www.retrofitdemoproject.ToastUtils;
import com.queqianme.www.retrofitdemoproject.netstate.NetStateUtils;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Call;
import retrofit2.Retrofit;

/**
 * Created by liupuyan on 2017/12/26.
 */

public class ApiClient {
    private static ApiClient apiClient = new ApiClient();
    private static String qqmClient = "";
    private Loading mLoading;

    private ApiClient() {

    }

    public static ApiClient getInstance() {
        return apiClient;
    }

    private Loading initLoading(Context context) {

        /**
         * cancel()是按返回键，Loading框关闭的回调，可以做取消加载请求的操作
         */
        mLoading = new Loading(context) {
            @Override
            public void cancel() {

            }
        };
        return mLoading;
    }

    private Retrofit getRetrofit() {
        OkHttpClient client = new OkHttpClient().newBuilder()
                // 设置网络请求超时
                /**
                 * TimeUnit 枚举类型
                 1. TimeUnit.MICROSECONDS:微秒(毫秒/1000）

                 2. TimeUnit.MILLISECONDS:毫秒(千分之一秒)

                 3. TimeUnit.NANOSECONDS:毫微秒（微秒/1000）

                 4. TimeUnit.SECONDS: 秒

                 5. TimeUnit.MINUTES: 分钟

                 6. TimeUnit.HOURS: 小时

                 7. TimeUnit.DAYS: 天
                 */
                .connectTimeout(5, TimeUnit.SECONDS)
                .addInterceptor(new Interceptor() {
                    @Override
                    public okhttp3.Response intercept(Chain chain) throws IOException {
                        Request request = chain.request().newBuilder()
//                                .addHeader("creater_oid", "123411") //这里就是添加一个请求头
                                .build();

//                        Buffer buffer = new Buffer();       不依赖logging，用这三行也能打印出请求体
//                        request.body().writeTo(buffer);
//                        Log.d(getClass().getSimpleName(), "intercept: " + buffer.readUtf8());

                        return chain.proceed(request);
                    } //下面是关键代码
                }).addInterceptor(new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BODY))
                .build();

        Retrofit retrofit = new Retrofit.Builder().baseUrl("https://appoff.ttjiekuan.com/app/v1/").client(client).build();

        return retrofit;
    }

    public UriInterface getUriInterface() {
        return getRetrofit().create(UriInterface.class);
    }

    public <T> void call(Call<ResponseBody> call, final OnResponseListener1 listener) {

        final Activity currentActivity = ActivityManager.getActivityManager().currentActivity();

        if (!NetStateUtils.isNetworkConnected(currentActivity)) {
            if (listener != null) {
                listener.onError(null);
            }
            ToastUtils.showToast(currentActivity, StatusCodeConst.NO_WIFI);
            return;
        }

        final Loading mLoading = initLoading(currentActivity);
        mLoading.show();
        System.out.println("******************************开始请求");

        call.enqueue(new RequestCallBack1() {
            @Override
            protected void onSuccess(BaseResponse1 response) {
                mLoading.dismiss();

                if (listener != null) {
                    listener.onSuccess(response);
                }
            }

            @Override
            protected void onError(BaseResponse1 response) {
                mLoading.dismiss();

                if (listener != null) {
                    listener.onError(response);
                }
            }
        });
    }


}
