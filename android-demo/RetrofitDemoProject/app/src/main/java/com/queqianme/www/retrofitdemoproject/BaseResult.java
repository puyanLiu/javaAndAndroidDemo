package com.queqianme.www.retrofitdemoproject;

/**
 * Created by liupuyan on 2017/12/22.
 */

public class BaseResult {
    private  int status;
    private String des;

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

    @Override
    public String toString() {
        return "BaseResult{" +
                "status=" + status +
                ", des='" + des + '\'' +
                '}';
    }
}
