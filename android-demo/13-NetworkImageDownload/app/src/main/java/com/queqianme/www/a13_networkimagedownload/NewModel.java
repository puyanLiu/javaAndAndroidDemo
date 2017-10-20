package com.queqianme.www.a13_networkimagedownload;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class NewModel {
    private String title;
    private String detail;
    private String comment;
    private String image;

    public NewModel() {
    }

    public NewModel(String title, String detail, String comment, String image) {
        this.title = title;
        this.detail = detail;
        this.comment = comment;
        this.image = image;
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

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
