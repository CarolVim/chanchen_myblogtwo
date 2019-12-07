package com.myblog.service.impl;

import com.myblog.dao.UserDao;
import com.myblog.pojo.User;
import com.myblog.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private UserDao userDao;

    @Override
    public List<User> SelectAll() {
        List<User> userList= (List<User>) userDao.SelectAll();
        return userList;
    }
}
