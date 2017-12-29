package com.queqianme.www.retrofitdemoproject.network;

/**
 * Created by liupuyan on 2017/9/25.
 */

public class BaseModel {
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
        return "BaseModel{" +
                "status=" + status +
                ", des='" + des + '\'' +
                '}';
    }
}
