package com.myblog.dao;

import com.myblog.pojo.User;

import java.util.List;

public interface RoleDao {
    public List<User> findSingle();
}
