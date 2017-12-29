package com.queqianme.www.retrofitdemoproject.network;

/**
 * Created by liupuyan on 2017/12/26.
 */

public class RawResponse {
    private String protocol;
    private int Code;
    private String message;
    private String url;

    public String getProtocol() {
        return protocol;
    }

    public void setProtocol(String protocol) {
        this.protocol = protocol;
    }

    public int getCode() {
        return Code;
    }

    public void setCode(int code) {
        Code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "RawResponse{" +
                "protocol='" + protocol + '\'' +
                ", Code=" + Code +
                ", message='" + message + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
