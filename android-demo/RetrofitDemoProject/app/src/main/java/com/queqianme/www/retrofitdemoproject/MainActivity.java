package com.queqianme.www.retrofitdemoproject;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import com.google.gson.Gson;
import com.queqianme.www.retrofitdemoproject.network.ApiClient;
import com.queqianme.www.retrofitdemoproject.network.BaseResponse1;
import com.queqianme.www.retrofitdemoproject.network.OnResponseListener1;
import com.queqianme.www.retrofitdemoproject.network.UriInterface;
import com.queqianme.www.retrofitdemoproject.network.UserInfoModel;
import com.queqianme.www.retrofitdemoproject.ref.BaseActivity;
import com.queqianme.www.retrofitdemoproject.ref.BaseResponse;
import com.queqianme.www.retrofitdemoproject.ref.GsonHelper;
import com.queqianme.www.retrofitdemoproject.ref.HttpUtils;
import com.queqianme.www.retrofitdemoproject.ref.MemberInterface;
import com.queqianme.www.retrofitdemoproject.ref.OnResponseListener;
import com.queqianme.www.retrofitdemoproject.ref.ServiceHelper;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.Body;
import retrofit2.http.POST;

public class MainActivity extends BaseActivity {

    private Button btn_request;
    private Loading mLoading;

    private String userId = "40";
    private String token = "a3d0294edd043c1f83eb0406b8e51d29";


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

    Retrofit retrofit = new Retrofit.Builder().baseUrl("https://appoff.ttjiekuan.com/app/v1/").client(client).build();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn_request = (Button) findViewById(R.id.btn_request);
        btn_request.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                retrofitPostDemo3();
//                retrofitPostDemo1();
                retrofitPostDemo4();
//                retrofitPostDemo5();


            }
        });

        ((Button)findViewById(R.id.btn_captcha)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                retrofitPostDemo5();
            }
        });

        ((Button)findViewById(R.id.btn_login)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                retrofitPostDemo4();
            }
        });

        ((Button)findViewById(R.id.btn_userinfo)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                retrofitPostDemo6();
            }
        });

        ((Button)findViewById(R.id.btn_homeinfo)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                retrofitPostDemo7();
            }
        });

        ((Button)findViewById(R.id.btn_question)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                retrofitPostDemo8();
            }
        });

    }

    // 常见问题
    private void retrofitPostDemo8() {
        Params params = new Params();
        params.put("userId", userId);
        params.put("token", token);
        params.put("protocolType", 8);

        ApiClient.getInstance().call(ApiClient.getInstance().getUriInterface().getProtocol(HttpUtils.getRequestBody(params)),
                new OnResponseListener1() {
                    @Override
                    public void onSuccess(BaseResponse1 response) {
                        String url = response.getResult().get("url").toString();
                        System.out.println("常见问题：" + url);
                    }

                    @Override
                    public void onError(BaseResponse1 response) {

                    }
                });
    }

    // 首页信息
    private void retrofitPostDemo7() {
        Params params = new Params();
        params.put("userId", userId);
        params.put("token", token);

        UriInterface uriInterface = retrofit.create(UriInterface.class);
        RequestBody requestBody = HttpUtils.getRequestBody(params);
        ApiClient.getInstance().call(uriInterface.getHomeInfo(requestBody),
                new OnResponseListener1() {
                    @Override
                    public void onSuccess(BaseResponse1 response) {
                    }

                    @Override
                    public void onError(BaseResponse1 response) {

                    }
                });
    }

    // 获取用户信息
    private void retrofitPostDemo6() {
        Params params = new Params();
        params.put("userId", userId);
        params.put("token", token);

        UriInterface uriInterface = retrofit.create(UriInterface.class);
        RequestBody requestBody = HttpUtils.getRequestBody(params);
        ApiClient.getInstance().call(uriInterface.getUserInfo(requestBody),
                new OnResponseListener1() {
                    @Override
                    public void onSuccess(BaseResponse1 response) {
                        String a = response.getResult().get("userInfo").toString();
                        UserInfoModel info = GsonHelper.convertEntity(a, UserInfoModel.class);
                        System.out.println("用户信息------" + info);
                    }

                    @Override
                    public void onError(BaseResponse1 response) {

                    }
                });
    }

    // 获取手机验证码
    private void retrofitPostDemo5() {
        Params params = new Params();
        params.put("phone", "13430264654");

        UriInterface uriInterface = retrofit.create(UriInterface.class);
        RequestBody requestBody = HttpUtils.getRequestBody(params);
        ApiClient.getInstance().call(uriInterface.getLoginSmsCaptcha(requestBody),
                new OnResponseListener1() {
                    @Override
                    public void onSuccess(BaseResponse1 response) {

                    }

                    @Override
                    public void onError(BaseResponse1 response) {

                    }
                });
    }

    // 登录
    private void retrofitPostDemo4() {

        Params params = new Params();
        params.put("phone", "13430264654");
        params.put("captcha", "1234");

        UriInterface uriInterface = retrofit.create(UriInterface.class);
        RequestBody requestBody = HttpUtils.getRequestBody(params);
        ApiClient.getInstance().call(uriInterface.login(requestBody),
                new OnResponseListener1() {
                    @Override
                    public void onSuccess(BaseResponse1 response) {
                        String a = response.getResult().get("userInfo").toString();
                        UserInfoModel info = GsonHelper.convertEntity(a, UserInfoModel.class);
                        System.out.println("用户信息------" + info);
                        userId = response.getResult().get("userId").toString();
                        token = response.getResult().get("token").toString();
                        System.out.println("userId:" + userId + "---------token:" + token);
                    }

                    @Override
                    public void onError(BaseResponse1 response) {

                    }
                });
    }

    private void retrofitPostDemo3() {
        Params params = new Params();
        params.put("mobile", "13430264654");
        params.put("vcode", "1234");

        ServiceHelper.callEntity(
                retrofit.create(MemberInterface.class).login1(HttpUtils.getRequestBody(params)),
                BaseResponse.class,
                new OnResponseListener<BaseResponse>() {
                    @Override
                    public void onSuccess(BaseResponse info, int actionId) {
                        System.out.println("--------" + info);
                    }

                    @Override
                    public void onSuccess(List<BaseResponse> info, int actionId) {

                    }

                    @Override
                    public void onClientEror(String errorMsg, int actionId) {

                    }

                    @Override
                    public void onServerEror(String errorMsg, int actionId) {

                    }
                }
                , 10001);

//        MemberInterface apiService = retrofit.create(MemberInterface.class);
//        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json"), params.toString());

//        Call<ResponseBody> call = apiService.login(requestBody);
//        call.enqueue(new Callback<ResponseBody>() {
//            @Override
//            public void onResponse(Call<ResponseBody> call, retrofit2.Response<ResponseBody> response) {
//                Log.d(getClass().getSimpleName(), "onResponse: ----" + response.body());
//
//                // 服务器返回数据
//                System.out.println("==============" + response.raw().toString());
//                System.out.println("==============" + response.body());
//
//
//                String a = response.body().source().buffer().readUtf8();
//                System.out.println("--------------------" + a);
//                Gson gson = new Gson();
//                BaseResult br = gson.fromJson(a, BaseResult.class);
//                System.out.println("=============="  + br);
//
//                System.out.println("----------------------------" + getMapForJson(a));
//
//            }
//
//            @Override
//            public void onFailure(Call<ResponseBody> call, Throwable t) {
//                Log.d(getClass().getSimpleName(), "onFailure: ------" + t.toString());
//            }
//        });
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

    /**
     * https://api.jieqianme.net/api/app/v1/user/login
     */
    private void retrofitPostDemo() {
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

        Retrofit retrofit = new Retrofit.Builder().baseUrl("https://api.queqianme.com/api/app/fast2/").client(client).build();
        ApiService apiService = retrofit.create(ApiService.class);

//new JSONObject里的getMap()方法就是返回一个map，里面包含了你要传给服务器的各个键值对，然后根据接口文档的请求格式，直接拼接上相应的东西就行了
//比如{"data":{这里面是参数}}，那就在外面拼上大括号和"data"好了
//        RequestBody requestBody = RequestBody.create(MediaType.parse("Content-Type, application/json"),
//                "{\"data\":"+new JSONObject(getMap()).toString()+"}");

        RequestBody requestBody = RequestBody.create(MediaType.parse("Content-Type, application/json"),
                new JSONObject(getMap()).toString());
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

    /**
     * https://api.jieqianme.net/api/app/v1/user/login
     */
    private void retrofitPostDemo1() {
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


        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://api.jieqianme.net/api/app/v1/")
                .client(client)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        TestClass.ApiService apiService = retrofit.create(TestClass.ApiService.class);
        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json"), params.toString());
        System.out.println("==============================" + requestBody.contentType());
        Call<ResponseBody> call = apiService.add(requestBody);
        call.enqueue(new Callback<ResponseBody>() {
            @Override
            public void onResponse(Call<ResponseBody> call, retrofit2.Response<ResponseBody> response) {
                Log.d(getClass().getSimpleName(), "onResponse: ----" + response.body());

                // 服务器返回数据
                System.out.println("==============" + response.raw().toString());
                System.out.println("==============" + response.body());


                String a = response.body().source().buffer().readUtf8();
                System.out.println("--------------------" + a);
                Gson gson = new Gson();
                BaseResult br = gson.fromJson(a, BaseResult.class);
                System.out.println("=============="  + br);

                System.out.println("----------------------------" + getMapForJson(a));

            }

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable t) {
                Log.d(getClass().getSimpleName(), "onFailure: ------" + t.toString());
            }
        });
    }

    /**
     * Json 转成 Map<>
     * @param jsonStr
     * @return
     */
    public static Map<String, Object> getMapForJson(String jsonStr){
        JSONObject jsonObject ;
        try {
            jsonObject = new JSONObject(jsonStr);

            Iterator<String> keyIter= jsonObject.keys();
            String key;
            Object value ;
            Map<String, Object> valueMap = new HashMap<String, Object>();
            while (keyIter.hasNext()) {
                key = keyIter.next();
                value = jsonObject.get(key);
                valueMap.put(key, value);
            }
            return valueMap;
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            Log.e("AAAAAAAAA", e.toString());
        }
        return null;
    }
    /**
     * Json 转成 List<Map<>>
     * @param jsonStr
     * @return
     */
    public static List<Map<String, Object>> getlistForJson(String jsonStr){
        List<Map<String, Object>> list = null;
        try {
            JSONArray jsonArray = new JSONArray(jsonStr);
            JSONObject jsonObj ;
            list = new ArrayList<Map<String,Object>>();
            for(int i = 0 ; i < jsonArray.length() ; i ++){
                jsonObj = (JSONObject)jsonArray.get(i);
                list.add(getMapForJson(jsonObj.toString()));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 方法名称:transStringToMap
     * 传入参数:mapString 形如 username'chenziwen^password'1234
     * 返回值:Map
     */
    public static Map transStringToMap(String mapString){
        Map map = new HashMap();
        java.util.StringTokenizer items;
        for(StringTokenizer entrys = new StringTokenizer(mapString, "^"); entrys.hasMoreTokens();
            map.put(items.nextToken(), items.hasMoreTokens() ? ((Object) (items.nextToken())) : null))
            items = new StringTokenizer(entrys.nextToken(), "'");
        return map;
    }

    /**
     * 方法名称:transMapToString
     * 传入参数:map
     * 返回值:String 形如 username'chenziwen^password'1234
     */
    public static String transMapToString(Map map){
        java.util.Map.Entry entry;
        StringBuffer sb = new StringBuffer();
        for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            entry = (java.util.Map.Entry)iterator.next();
            sb.append(entry.getKey().toString()).append( "'" ).append(null==entry.getValue()?"":
                    entry.getValue().toString()).append (iterator.hasNext() ? "^" : "");
        }
        return sb.toString();
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

}
