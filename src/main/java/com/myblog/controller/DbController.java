package com.myblog.controller;

import com.myblog.pojo.Db;
import com.myblog.service.DbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/myblog")
public class DbController {
    @Autowired
    public DbService dbService;
    @RequestMapping(value = "/Db.html",method = RequestMethod.GET)
    public ModelAndView dbList(ModelAndView modelAndView, Model model){
        modelAndView=new ModelAndView("/backup");
        List<Db> dbList=dbService.findAll();
        model.addAttribute("dbList",dbList);
        return modelAndView;
    }
}
