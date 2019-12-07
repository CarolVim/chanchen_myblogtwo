package com.myblog.service;

import com.myblog.pojo.User;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    public boolean isExist(HttpServletRequest request);
    public User SelectAll(HttpServletRequest request);
    public User selectUser(@Param("userName") String userName);
    public User selectById(@Param("userId") Integer userId);
}
