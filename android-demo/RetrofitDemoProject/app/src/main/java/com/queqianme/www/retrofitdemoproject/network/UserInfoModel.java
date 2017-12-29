package com.queqianme.www.retrofitdemoproject.network;

/**
 * Created by liupuyan on 2017/12/26.
 */

public class UserInfoModel {
    private long userId;
    private String phone;
    private int red;
    private int bankcard;
    private int message;
    private boolean isbankcard;
    private String limit;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRed() {
        return red;
    }

    public void setRed(int red) {
        this.red = red;
    }

    public int getBankcard() {
        return bankcard;
    }

    public void setBankcard(int bankcard) {
        this.bankcard = bankcard;
    }

    public int getMessage() {
        return message;
    }

    public void setMessage(int message) {
        this.message = message;
    }

    public boolean isIsbankcard() {
        return isbankcard;
    }

    public void setIsbankcard(boolean isbankcard) {
        this.isbankcard = isbankcard;
    }

    public String getLimit() {
        return limit;
    }

    public void setLimit(String limit) {
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "UserInfoModel{" +
                "userId=" + userId +
                ", phone='" + phone + '\'' +
                ", red=" + red +
                ", bankcard=" + bankcard +
                ", message=" + message +
                ", isbankcard=" + isbankcard +
                ", limit='" + limit + '\'' +
                '}';
    }
}
