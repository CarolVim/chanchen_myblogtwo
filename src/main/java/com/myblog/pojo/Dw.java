package com.myblog.pojo;

import java.util.Date;

public class Dw {
    Integer shortId;
    String  title;
    String content;
    String picUrl;
    Date addtime;
    public Integer getShortId() {
        return shortId;
    }

    public void setShortId(Integer shortId) {
        this.shortId = shortId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }


}
