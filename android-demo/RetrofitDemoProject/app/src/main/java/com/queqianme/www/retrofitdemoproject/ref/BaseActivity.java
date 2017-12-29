package com.queqianme.www.retrofitdemoproject.ref;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import com.queqianme.www.retrofitdemoproject.ActivityManager;

import java.io.IOException;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/**
 * Created by liupuyan on 2017/12/22.
 *
 * 统一管理Activity类
 */

public abstract class BaseActivity extends AppCompatActivity {

    public Retrofit retrofit;
    private OkHttpClient okHttpClient;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 将Activity实例添加到ActivityManager的堆栈
        ActivityManager.getActivityManager().addActivity(this);

        //                                .addHeader("qqm_client", "123411") //这里就是添加一个请求头
//                        Buffer buffer = new Buffer();       // 不依赖logging，用这三行也能打印出请求体
//                        request.body().writeTo(buffer);
//                        Log.d(getClass().getSimpleName(), "intercept: " + buffer.readUtf8());
//下面是关键代码
        okHttpClient = new OkHttpClient().newBuilder()
                .addInterceptor(new Interceptor() {
                    @Override
                    public okhttp3.Response intercept(Chain chain) throws IOException {
                        Request request = chain.request().newBuilder()
//                                .addHeader("qqm_client", "123411") //这里就是添加一个请求头
                                .build();

//                        Buffer buffer = new Buffer();       // 不依赖logging，用这三行也能打印出请求体
//                        request.body().writeTo(buffer);
//                        Log.d(getClass().getSimpleName(), "intercept: " + buffer.readUtf8());

                        return chain.proceed(request);
                    } //下面是关键代码
                })
                .addInterceptor(new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BODY))
                .build();

        retrofit = new Retrofit.Builder()
                .baseUrl(ConstantsUrl.BASE_HTTPURL)
                .client(okHttpClient)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        // 将Activity实例从ActivityManager的堆栈中移除
        ActivityManager.getActivityManager().finishActivity(this);
    }

}
