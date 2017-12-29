package com.queqianme.www.retrofitdemoproject.model;

/**
 * Created by liupuyan on 2017/12/22.
 */

public class LoginModel {
    private int status;
    private String des;
    private long userId;
    private String token;
    private String mobile;

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

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        return "LoginModel{" +
                "status=" + status +
                ", des='" + des + '\'' +
                ", userId=" + userId +
                ", token='" + token + '\'' +
                ", mobile='" + mobile + '\'' +
                '}';
    }
}
