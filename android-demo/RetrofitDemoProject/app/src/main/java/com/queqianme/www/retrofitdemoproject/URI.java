package com.queqianme.www.retrofitdemoproject;

import com.queqianme.www.retrofitdemoproject.model.LoginModel;
import com.queqianme.www.retrofitdemoproject.model.TestModel;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

/**
 * Created by liupuyan on 2017/12/22.
 */

public class URI {


    /**
     * 将API接口转化为一个Java接口
     */
    public interface TestInterface {
        @GET("users/{user}")
            // Call<TestModel> 是一个请求对象，<TestModel>表示返回结果是一个 TestModel 类型的实例
            // {user} 类似于占位符的作用，具体类型由 repo(@Path("user") String user) 指定，这里表示 {user} 将是一段字符串
        Call<TestModel> repo(@Path("user") String user);
    }

    /**
     * 发送登陆手机短信
     */
    public interface SendLoginSmsInterface {
        @FormUrlEncoded
        @POST("pub/sendLoginSms")
        Call<LoginModel> post(@Field("mobile") String mobile, @Field("type") int type);
    }

    /**
     * 将API接口转化为一个Java接口
     */
    public interface LoginInterface {
        @FormUrlEncoded
        @POST("user/login")
        Call<LoginModel> post(@Field("mobile") String mobile, @Field("vcode") String vcode);
    }

    /**
     * 将API接口转化为一个Java接口
     */
    public interface QLoginInterface {
        @FormUrlEncoded
        @POST("user/login")
        Call<String> post(@Field("phone") String phone, @Field("password") String password);
    }
}
