package com.myblog.service.impl;
import com.myblog.dao.UserDao;
import com.myblog.pojo.User;
import com.myblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean isExist(HttpServletRequest request) {
        String userName=request.getParameter("userName");
        String userPass=request.getParameter("userPass");
//        System.out.println("userName:"+userName);
      System.out.println("userPass:"+userPass);
       Integer count=userDao.CheckUser(userName,userPass);
       System.out.println(count);
       // System.out.println("userPass:"+userPass+" Passwd："+Passwd);
        if(count!=0){
            System.out.println("登陆成功!");
            return true;
        }
        return false;
    }

    @Override
    public User SelectAll(HttpServletRequest request) {
        String userName=request.getParameter("userName");
        User user=userDao.SelectUser(userName);
        return user;

    }

    @Override
    public User selectUser(String userName) {
        User userList= (User) userDao.SelectUser(userName);
        return userList;
    }

    @Override
    public User selectById(Integer userId) {
        User user=userDao.SelectById(userId);
        return user;
    }


}
