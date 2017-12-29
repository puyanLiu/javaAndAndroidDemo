package com.queqianme.www.retrofitdemoproject.ref;

/**
 * Created by liupuyan on 2017/12/25.
 */

public class BaseResponse<T> {
    private  int status;
    private String des;
    private T result;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "BaseResponse{" +
                "status=" + status +
                ", des='" + des + '\'' +
                ", result=" + result +
                '}';
    }
}
