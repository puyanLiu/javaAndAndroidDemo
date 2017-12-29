package com.queqianme.www.retrofitdemoproject.ref;

import java.util.List;

/**
 * Created by liupuyan on 2017/12/25.
 */

public interface OnResponseListener<T> {
    void onSuccess(T info, int actionId);
    void onSuccess(List<T> info, int actionId);
    void onClientEror(String errorMsg,int actionId);
    void onServerEror(String errorMsg,int actionId);
}
