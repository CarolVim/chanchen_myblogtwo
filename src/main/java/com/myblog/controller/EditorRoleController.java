package com.myblog.controller;

import com.myblog.pojo.User;
import com.myblog.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class EditorRoleController {
    @Autowired
    private RoleService roleService;
    @RequestMapping(value = "/myblog/Permission.do",method = RequestMethod.POST)
    public void RoleList(HttpServletResponse response) throws IOException {
        List<User> userList=roleService.findRole();
        //System.out.println("userList："+userList);
        Gson gson=new Gson();
        String json=gson.toJson(userList);
      //  System.out.println("json:"+json);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(json);
    }
    @RequestMapping(value = "/myblog/roleedit.html",method = RequestMethod.GET)
    public ModelAndView editRole(ModelAndView modelAndView, Model model){
        modelAndView=new ModelAndView("/roleedit");
        return modelAndView;
    }

}
