package com.myblog.service;

import com.myblog.pojo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface AdminService {
    List<User> SelectAll();
}
