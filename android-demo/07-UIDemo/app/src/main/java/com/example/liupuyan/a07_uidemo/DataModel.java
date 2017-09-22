package com.example.liupuyan.a07_uidemo;

/**
 * Created by liupuyan on 2017/9/22.
 */

public class DataModel {
    private int imgId;
    private String content;

    public DataModel(int imgId, String content) {
        this.imgId = imgId;
        this.content = content;
    }

    public int getImgId() {
        return imgId;
    }

    public void setImgId(int imgId) {
        this.imgId = imgId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
