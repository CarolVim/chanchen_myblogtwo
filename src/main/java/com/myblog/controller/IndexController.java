package com.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/myblog")
public class IndexController {
    @RequestMapping(value = "/index.html" ,method= RequestMethod.GET)
    public ModelAndView Index(ModelAndView modelAndView){
        modelAndView=new ModelAndView("/index");
        return modelAndView;
    }
}
