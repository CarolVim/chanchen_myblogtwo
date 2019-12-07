package com.myblog.pojo;

import java.util.Date;

public class User {
    int userId;
    String userName;
    String userPass;
    String email;
    String picUrl;
    int level;
    String address;
    Date lastLoginTime;
    Date registTime;
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getUserPass() {
        return userPass;
    }
    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public int getLevel() {
        return level;
    }
    public void setLevel(int level) {
        this.level = level;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Date getLastLoginTime() {
        return lastLoginTime;
    }
    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }
    public String getPicUrl() {
        return picUrl;
    }
    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }
    public Date getRegistTime() {
        return registTime;
    }
    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }
    @Override
    public String toString() {
        return "User [userId=" + userId + ", userName=" + userName
                + ", userPass=" + userPass + ", email=" + email + ", picUrl="
                + picUrl + ", level=" + level + ", address=" + address
                + ", lastLoginTime=" + lastLoginTime + ", registTime="
                + registTime + "]";
    }



}
