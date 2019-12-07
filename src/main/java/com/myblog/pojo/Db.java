package com.myblog.pojo;

import java.util.Date;

public class Db {
    Integer dbId;
    String dbname;
    Date editime;
    Date lastime;
    String saveaddress;
    public Integer getDbId() {
        return dbId;
    }

    public void setDbId(Integer dbId) {
        this.dbId = dbId;
    }

    public String getDbname() {
        return dbname;
    }

    public void setDbname(String dbname) {
        this.dbname = dbname;
    }

    public Date getEditime() {
        return editime;
    }

    public void setEditime(Date editime) {
        this.editime = editime;
    }

    public Date getLastime() {
        return lastime;
    }

    public void setLastime(Date lastime) {
        this.lastime = lastime;
    }

    public String getSaveaddress() {
        return saveaddress;
    }

    public void setSaveaddress(String saveaddress) {
        this.saveaddress = saveaddress;
    }




}
