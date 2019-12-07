package com.myblog.service;

import com.myblog.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface EditorService {
    public Boolean UpdateUser(HttpServletRequest request, @RequestParam("picUrl") MultipartFile file,String picUrl, Integer userId, HttpSession httpSession,Model model);
    public Boolean UpdatePasswd(User user,HttpServletRequest request, String userPass, HttpSession session,Model model);
}
