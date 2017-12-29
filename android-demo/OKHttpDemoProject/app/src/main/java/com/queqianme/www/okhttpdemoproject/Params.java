package com.queqianme.www.okhttpdemoproject;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by liupuyan on 2017/12/20.
 */

public class Params extends JSONObject {

    public void getUserTokenData() {
        this.put("userId", "1123");
        this.put("token", "ddfreqa");
    }

}
