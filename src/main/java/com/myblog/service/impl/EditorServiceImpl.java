package com.myblog.service.impl;

import com.myblog.dao.UserDao;
import com.myblog.pojo.User;
import com.myblog.service.EditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
@Service("editorService")
@Transactional
public class EditorServiceImpl implements EditorService {
   @Autowired
    private UserDao userDao;
    @Override
    public Boolean UpdateUser(HttpServletRequest request, MultipartFile file, String picUrl, Integer userId, HttpSession session, Model model) {
        if(!file.isEmpty()){
            //上传文件路径
            String path=request.getServletContext().getRealPath("/static/HT/images/upload/");
            System.out.println("path=:"+path);
            String filename=file.getOriginalFilename();
            File filepath=new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()){
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件中
            try {
                file.transferTo(new File(path+File.separator+filename));
            }catch (IllegalStateException e){
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            String savename="/static/HT/images/upload/"+filename;
            User user= (User) session.getAttribute("USER_SESSION");
            String Id=request.getParameter("userId");//获取当前的userId
            System.out.println("Id:"+Id);
            userId=user.getUserId();//获取session中目前登陆的userid
            System.out.println("userId:"+userId);
            String uid=String.valueOf(userId);
            if(!uid.equals(Id)){
                uid=Id;
               // System.out.println("uid:"+uid);
            }
            Integer uuid=Integer.valueOf(uid);
            userDao.EditorUser(savename,uuid);
            return true;
        }
        return false;
    }

    @Override
    public Boolean UpdatePasswd(User user,HttpServletRequest request, String userPass, HttpSession session, Model model) {
        user= (User) session.getAttribute("USER_SESSION");
        String Id=request.getParameter("userId");
        System.out.println("userId:"+Id);
       Integer userId=user.getUserId();
       String uid=String.valueOf(userId);
       if(!uid.equals(Id)){
           userId=Integer.valueOf(uid);
       }
       System.out.println("userId:"+userId);
       userPass=request.getParameter("newPass");
       System.out.println("userPass:"+userPass);
       String rePass=request.getParameter("rePass");
       System.out.println("rePass:"+rePass);
       if (rePass.equals(userPass)){
           userDao.EditorPasswd(rePass,userId);
           System.out.println("密码更新成功!");
           return true;
       }
       System.out.println("密码更新失败!");
       return false;
    }

}
