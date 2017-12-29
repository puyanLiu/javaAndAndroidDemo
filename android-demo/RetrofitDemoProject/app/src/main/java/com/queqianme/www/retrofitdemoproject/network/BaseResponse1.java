package com.queqianme.www.retrofitdemoproject.network;

import java.util.Map;

/**
 * Created by liupuyan on 2017/12/26.
 */

public class BaseResponse1 {
    private RawResponse rawResponse;
    private int status;
    private String statusDes;
    private String error;
    private Map<String, Object> result;
    private String htmlContent;

    public RawResponse getRawResponse() {
        return rawResponse;
    }

    public void setRawResponse(RawResponse rawResponse) {
        this.rawResponse = rawResponse;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getStatusDes() {
        return statusDes;
    }

    public void setStatusDes(String statusDes) {
        this.statusDes = statusDes;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    public String getHtmlContent() {
        return htmlContent;
    }

    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent;
    }

    @Override
    public String toString() {
        return "BaseResponse1{" +
                "rawResponse=" + rawResponse +
                ", status=" + status +
                ", statusDes='" + statusDes + '\'' +
                ", error='" + error + '\'' +
                ", result=" + result +
                ", htmlContent='" + htmlContent + '\'' +
                '}';
    }
}
