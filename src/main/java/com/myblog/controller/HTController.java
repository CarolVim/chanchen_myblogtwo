package com.myblog.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.myblog.pojo.Article;
import com.myblog.pojo.Dw;
import com.myblog.pojo.User;
import com.myblog.service.AdminService;
import com.myblog.service.ArticleService;
import com.myblog.service.EditorService;
import com.myblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/myblog")
public class HTController {
    @Autowired
    private UserService userService;
    @Autowired
    private ArticleService articleService;
    @RequestMapping(value = "/BianJi.html",method = RequestMethod.GET)
    public ModelAndView Administation( User user,ModelAndView modelAndView, HttpSession session,HttpServletRequest request,Model model){
           modelAndView=new ModelAndView("/BianJi");
           session=request.getSession();
            user= (User) session.getAttribute("USER_SESSION");
//            System.out.println("session:"+user.getUserName());
            String userName=user.getUserName();
//           System.out.println("userName:"+userName);
           User userList= (User) userService.selectUser(user.getUserName());
            model.addAttribute("userList",userList);
            System.out.println("test");
        System.out.println("test");
        System.out.println("test");
            return modelAndView;
    }
    @Autowired
    private AdminService adminService;
    @RequestMapping(value = "/guanli.html",method = RequestMethod.GET)
    public ModelAndView edit(ModelAndView modelAndView, HttpSession session,HttpServletRequest request,Model model){
        modelAndView=new ModelAndView("/guanli");
        session=request.getSession(true);
        User user= (User) session.getAttribute("USER_SESSION");
        List<User> adminList=adminService.SelectAll();
        model.addAttribute("userList",adminList);
        return modelAndView;
    }
    @Autowired
    private EditorService editorService;
    @RequestMapping(value = "/PasswdChange.html",method = RequestMethod.GET)
    public ModelAndView Password(Integer userId,HttpServletRequest request,HttpSession session,Model model,User user,ModelAndView modelAndView){
        modelAndView=new ModelAndView("/PasswdChange");
        user= (User) request.getSession().getAttribute("USER_SESSION");
        String userName=user.getUserName();
        user=userService.selectUser(userName);
        model.addAttribute("pwList",user);
        return modelAndView;
    }

    @RequestMapping(value = "/role.html",method = RequestMethod.GET)
    public ModelAndView Authority(ModelAndView modelAndView){
        modelAndView=new ModelAndView("/role");
        return modelAndView;
    }
    @RequestMapping(value = "/article.html",method = RequestMethod.GET)
    public ModelAndView Article(Model model,@RequestParam(defaultValue = "1",value="pageNum") Integer pageNum,ModelAndView modelAndView){
        modelAndView=new ModelAndView("/articleList");
        PageHelper.startPage(pageNum,10);
        List<Dw> articleList=articleService.findArticle();
        PageInfo<Dw> pageInfo=new PageInfo<>(articleList);
        model.addAttribute("pageInfo",pageInfo);
        return modelAndView;
    }


    @RequestMapping(value = "/ZL.html",method = RequestMethod.GET)
    public ModelAndView EditorPerson(ModelAndView modelAndView,HttpSession session,HttpServletRequest request,Model model){
        modelAndView=new ModelAndView("/ZL");
        session=request.getSession(true);
        String userId=request.getParameter("userId");
        User adminList=userService.selectById(Integer.valueOf(userId));
        model.addAttribute("userList",adminList);
        return modelAndView;
    }


//    @RequestMapping(value = "/myblog/Change.do",method = RequestMethod.GET)
//    public ModelAndView EditorWz(ModelAndView modelAndView){
//        modelAndView=new ModelAndView("/Wz");
//        return modelAndView;
//    }

    @RequestMapping(value = "/Hd.html",method = RequestMethod.GET)
    public ModelAndView Node(ModelAndView modelAndView){
        modelAndView=new ModelAndView("/HD");
        return modelAndView;
    }


//    @RequestMapping(value = "/zp.html",method = RequestMethod.GET)
//    public ModelAndView Zp(ModelAndView modelAndView){
//        modelAndView=new ModelAndView("/zuoping");
//        return modelAndView;
//    }

}
