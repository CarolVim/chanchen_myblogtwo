package com.myblog.controller;

import com.myblog.service.EditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UpdateUserController {
    @Autowired
    private EditorService editorService;
    //编辑用户信息功能
    @PostMapping(value = "/myblog/UpdateUserInfo.do")
    @ResponseBody
    public ModelAndView upload(HttpServletRequest request, @RequestParam("picUrl") MultipartFile file, String userphoto, Integer userId, HttpSession session,Model model){
        Boolean msg=editorService.UpdateUser(request, file, userphoto, userId, session,model);
        ModelAndView modelAndView = new ModelAndView("/BianJi");
        if(msg==true) {
           // model.addAttribute("msg","上传成功!");
            System.out.println("上传成功！！！");
            return modelAndView;
        }else {
        //    model.addAttribute("msg","上传失败");
            System.out.println("上传失败了！！");
            return modelAndView;
        }

    }

}
