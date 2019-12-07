package com.myblog.controller;

import com.myblog.dao.UserDao;
import com.myblog.pojo.User;
import com.myblog.service.UserService;
import com.myblog.utils.PictureCheckCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping("/myblog")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserDao userDao;
    @RequestMapping(value = "/login.html",method= RequestMethod.GET)
    public ModelAndView index(ModelAndView modelAndView){
        modelAndView = new ModelAndView("/login");
           return modelAndView;
    }
    @RequestMapping(value = "/Login.do",method = RequestMethod.POST)
    public ModelAndView login(String code, String s,  Date dates,String picUrl,HttpServletRequest request, ModelAndView modelAndView,HttpSession session,User user,Model model){
        code=request.getParameter("code");
        s= (String) request.getSession().getAttribute("randCheckCode");
        System.out.println(s);

        /**
         * 获取登陆时间
         */
        dates = new Date();
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:ss");
        String Date = time.format(dates);
        /**
         * 获取登陆IP地址
         */
        String IP = getIpAddr(request);
        System.out.println("获取用户的IP地址:" + IP);
        String userName = request.getParameter("userName");
        userDao.ChangeLoginDetail(IP, Date, userName);
        System.out.println("更新用户登陆信息成功");
        Boolean msg = userService.isExist(request);
        /**
         * 查找注入内容并添加进session中
         */
        user=userService.selectUser(userName);
        if(s.equals(code)&&msg==true) {
                modelAndView = new ModelAndView("/main");
                session.setAttribute("USER_SESSION", user);
               // System.out.println("CES:"+user);
                model.addAttribute("user",user);
                return modelAndView;

        }
            modelAndView=new ModelAndView("/login");
            return modelAndView;
    }


    /*
     获取用户的登陆IP地址
      */
    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        if (ip.equals("0:0:0:0:0:0:0:1")) {
            ip = "127.0.0.1";
        }
        return ip;
    }

    @RequestMapping(value="PictureCheckCode")
    public void ProductCode(HttpServletRequest request, HttpServletResponse response){
      //  设置不缓存图片
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "No-cache");
        response.setDateHeader("Expires", 0);
        //指定生成的响应图片,一定不能缺少这句话,否则错误.
        response.setContentType("image/jpeg");
        PictureCheckCode pic=new PictureCheckCode();
        pic.productCode(request,response);

    }

    @RequestMapping(value = "/logout.do",method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session,ModelAndView modelAndView){
        modelAndView=new ModelAndView("/login");
        session.invalidate();
        return modelAndView;
    }


    @RequestMapping(value="/welcome.html")
    public ModelAndView welcome(ModelAndView modelAndView){
        modelAndView=new ModelAndView("/welcome");
        return modelAndView;
    }
}
