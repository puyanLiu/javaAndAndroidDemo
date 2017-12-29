package com.queqianme.www.retrofitdemoproject.ref;

import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/**
 * Created by liupuyan on 2017/12/25.
 */

public interface MemberInterface {

    @POST("user/login")
    Call<ResponseBody> login(@Body RequestBody body);

    @POST("user/login")
    Call<BaseResponse> login1(@Body RequestBody body);
}
