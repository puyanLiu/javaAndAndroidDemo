package com.queqianme.www.mobilesafeproject.model;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class AppVersionModel {
    private String versionName;
    private int versionCode;
    private String title;
    private String detail;
    private String url;

    public AppVersionModel() {
    }

    public AppVersionModel(String versionName, int versionCode, String title, String detail, String url) {
        this.versionName = versionName;
        this.versionCode = versionCode;
        this.title = title;
        this.detail = detail;
        this.url = url;
    }

    public String getVersionName() {
        return versionName;
    }

    public void setVersionName(String versionName) {
        this.versionName = versionName;
    }

    public int getVersionCode() {
        return versionCode;
    }

    public void setVersionCode(int versionCode) {
        this.versionCode = versionCode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
