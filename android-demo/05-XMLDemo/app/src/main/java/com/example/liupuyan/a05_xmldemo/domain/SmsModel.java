package com.example.liupuyan.a05_xmldemo.domain;

/**
 * Created by liupuyan on 2017/9/9.
 */

public class SmsModel {

    private String body;
    private long date;
    private int type;
    private String address;

    public SmsModel() {
    }

    public SmsModel(String body, long date, int type, String address) {
        this.body = body;
        this.date = date;
        this.type = type;
        this.address = address;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "SmsModel{" +
                "body='" + body + '\'' +
                ", date=" + date +
                ", type=" + type +
                ", address='" + address + '\'' +
                '}';
    }
}
