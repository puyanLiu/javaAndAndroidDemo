package com.queqianme.www.retrofitdemoproject;

import android.app.Activity;
import android.content.Context;
import android.util.Log;

import com.queqianme.www.retrofitdemoproject.model.LoginModel;
import com.queqianme.www.retrofitdemoproject.model.TestModel;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.Body;
import retrofit2.http.POST;

/**
 * Created by liupuyan on 2017/12/25.
 */

public class TestClass {


    private Loading mLoading;

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

    /**
     * https://api.jieqianme.net/api/app/v1/user/login
     */
    private void sendLoginSmsDemo() {

        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://api.jieqianme.net/api/app/v1/")
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        URI.SendLoginSmsInterface loginInterface = retrofit.create(URI.SendLoginSmsInterface.class);
        Call<LoginModel> modelCall = loginInterface.post("13430264654", 1);

        final Activity currentActivity = ActivityManager.getActivityManager().currentActivity();
        initLoading(currentActivity);

        System.out.println("******************************开始请求");
        modelCall.enqueue(new Callback<LoginModel>() {
            @Override
            public void onResponse(Call<LoginModel> call, Response<LoginModel> response) {

                mLoading.dismiss();

                System.out.println("******************************请求成功");
                System.out.println("成功------------------------" + response.body() + "-----------------------" + call);
            }

            @Override
            public void onFailure(Call<LoginModel> call, Throwable t) {

                mLoading.dismiss();

                System.out.println("******************************请求失败");
                System.out.println("失败------------------------" + t.getMessage());
            }
        });
    }


    private Map getMap1() {
        Map<String, Object> params = new HashMap<>();
        params.put("mobile", "13430264654");
        params.put("vcode", "1234");
        return params;
    }

    /**
     * https://api.jieqianme.net/api/app/v1/user/login
     */
    private void retrofitPostDemo() {

        JSONObject params = new JSONObject();
        try {
            params.put("mobile", "13430264654");
            params.put("vcode", "1234");
        } catch (JSONException e) {
            e.printStackTrace();
        }

        OkHttpClient client = new OkHttpClient().newBuilder()
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


        Retrofit retrofit = new Retrofit.Builder().baseUrl("https://api.jieqianme.net/api/app/v1/").client(client).build();
        ApiService apiService = retrofit.create(ApiService.class);

//new JSONObject里的getMap()方法就是返回一个map，里面包含了你要传给服务器的各个键值对，然后根据接口文档的请求格式，直接拼接上相应的东西就行了
//比如{"data":{这里面是参数}}，那就在外面拼上大括号和"data"好了
//        RequestBody requestBody = RequestBody.create(MediaType.parse("Content-Type, application/json"),
//                "{\"data\":"+new JSONObject(getMap()).toString()+"}");

        RequestBody requestBody = RequestBody.create(MediaType.parse("Content-Type, application/json"), params.toString());
        Call<ResponseBody> call = apiService.add(requestBody);
        call.enqueue(new Callback<ResponseBody>() {
            @Override
            public void onResponse(Call<ResponseBody> call, retrofit2.Response<ResponseBody> response) {
                Log.d(getClass().getSimpleName(), "onResponse: ----" + response.body());
            }

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable t) {
                Log.d(getClass().getSimpleName(), "onFailure: ------" + t.toString());
            }
        });
    }

    private Map getMap() {
        Map<String, Object> params = new HashMap<>();
        params.put("phone", "13430264654");
        params.put("password", "123456");
        return params;
    }

    interface ApiService {
        @POST("user/login")
        Call<ResponseBody> add(@Body RequestBody body);
    }

    /**
     * https://api.jieqianme.net/api/app/v1/user/login
     */
    private void retrofitPostDemo1() {
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://api.jieqianme.net/api/app/v1/")
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        URI.LoginInterface loginInterface = retrofit.create(URI.LoginInterface.class);
        Call<LoginModel> modelCall = loginInterface.post("13430264654", "1234");
        System.out.println("******************************开始请求");
        modelCall.enqueue(new Callback<LoginModel>() {
            @Override
            public void onResponse(Call<LoginModel> call, Response<LoginModel> response) {
                System.out.println("******************************请求成功");
                System.out.println("成功------------------------" + response.body() + "-----------------------" + call);
            }

            @Override
            public void onFailure(Call<LoginModel> call, Throwable t) {
                System.out.println("******************************请求失败");
                System.out.println("失败------------------------" + t.getMessage());
            }
        });
    }

    /**
     * 接口的URL地址 https://api.github.com/users/Guolei1130
     */
    private void retrofitGetDemo() {
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://api.github.com/")
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        URI.TestInterface apiInterface = retrofit.create(URI.TestInterface.class);
        Call<TestModel> modelCall = apiInterface.repo("Guolei1130");
        System.out.println("******************************开始请求");
        modelCall.enqueue(new Callback<TestModel>() {
            @Override
            public void onResponse(Call<TestModel> call, Response<TestModel> response) {
                System.out.println("******************************请求成功");
                System.out.println("成功------------------------" + response.body().getLogin());
            }

            @Override
            public void onFailure(Call<TestModel> call, Throwable t) {
                System.out.println("******************************请求失败");
                System.out.println("失败------------------------" + t.getMessage());
            }
        });

    }
}
