package com.queqianme.www.retrofitdemoproject.network;

import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/**
 * Created by liupuyan on 2017/12/26.
 */

public interface UriInterface {
    @POST("user/login")
    Call<ResponseBody> login(@Body RequestBody body);

    @POST("user/getLoginSmsCaptcha")
    Call<ResponseBody> getLoginSmsCaptcha(@Body RequestBody body);

    @POST("user/getUserInfo")
    Call<ResponseBody> getUserInfo(@Body RequestBody body);

    @POST("home/getHomeInfo")
    Call<ResponseBody> getHomeInfo(@Body RequestBody body);

    @POST("protocol/getProtocol")
    Call<ResponseBody> getProtocol(@Body RequestBody body);
}
