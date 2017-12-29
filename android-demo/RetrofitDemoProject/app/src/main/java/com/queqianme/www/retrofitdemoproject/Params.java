package com.queqianme.www.retrofitdemoproject;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by liupuyan on 2017/12/20.
 */

public class Params extends JSONObject {

    public void getUserTokenData() {
        this.put("userId", "1123");
        this.put("token", "ddfreqa");
    }

    public JSONObject put(String name, Object value) {
        try {
            super.put(name, value);
        } catch (JSONException e) {
            e.printStackTrace();
            System.out.println("-----------------------" + e);
        }
        return this;
    }

    public JSONObject put(String name, int value) {
        try {
            super.put(name, value);
        } catch (JSONException e) {
            e.printStackTrace();
            System.out.println("-----------------------" + e);
        }
        return this;
    }

}
