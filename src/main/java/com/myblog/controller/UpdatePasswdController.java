package com.myblog.controller;

import com.myblog.pojo.User;
import com.myblog.service.EditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UpdatePasswdController {
    @Autowired
    private EditorService editorService;
    @RequestMapping(value = "/myblog/updatePass.do",method = RequestMethod.POST)
    public ModelAndView EditorPasswd(User user, HttpServletRequest request, String userPass, HttpSession session, Model model, ModelAndView modelAndView){
        Boolean msg=editorService.UpdatePasswd(user,request,userPass,session,model);
        if (msg==true){
            modelAndView=new ModelAndView("/PasswdChange");
            System.out.println("密码更新成功");
            model.addAttribute("msg","密码更新成功");
            return modelAndView;
        }
        modelAndView=new ModelAndView("/PasswdChange");
        System.out.println("密码更新失败");
        model.addAttribute("msg","密码更新失败");
        return modelAndView;
    }
}
