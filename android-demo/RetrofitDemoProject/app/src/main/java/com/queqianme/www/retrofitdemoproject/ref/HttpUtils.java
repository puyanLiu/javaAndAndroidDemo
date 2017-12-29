package com.queqianme.www.retrofitdemoproject.ref;

import com.queqianme.www.retrofitdemoproject.Params;

import okhttp3.MediaType;
import okhttp3.RequestBody;

/**
 * Created by liupuyan on 2017/12/25.
 */

public class HttpUtils {
    /**
     *将封装好的请求bean，转化为requestBody,用于传递json格式的参数
     * @param url  本次请求的地址，用于打印请求参数日志
     * @param object
     * @return
     */
//    public static RequestBody getRequestBody(String url, Object object){
//
//        RequestBody requestBody = RequestBody.create(MediaType.parse(ConstantsFinal.PARSETYPE), params.toString());
//
//
//
//        Gson gson = new Gson();
//        String jsonstr = gson.toJson(object);
//        RequestBody body=RequestBody.create(okhttp3.MediaType.parse(ConstantsFinal.PARSETYPE),jsonstr);
//        Log.i("====缘天然用户端：",url+"  *****    请求requestjson="+jsonstr);
//        return body;
//    }

    /**
     *将封装好的请求bean，转化为requestBody,用于传递json格式的参数
     * @param params  本次请求的地址，用于打印请求参数日志
     * @return
     */
    public static RequestBody getRequestBody(Params params){
        RequestBody requestBody = RequestBody.create(MediaType.parse(ConstantsFinal.PARSETYPE), params.toString());
        return requestBody;
    }
}
