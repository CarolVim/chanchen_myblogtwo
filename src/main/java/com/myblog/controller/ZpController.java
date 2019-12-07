package com.myblog.controller;

import com.myblog.pojo.Zp;
import com.myblog.service.ZpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/myblog")
public class ZpController {
    @Autowired
    private ZpService zpService;
    @RequestMapping(value = "/zp.html",method = RequestMethod.GET)
    public ModelAndView zpList(ModelAndView modelAndView, Model model){
        modelAndView=new ModelAndView("/zuoping");
        List<Zp> zpList=zpService.SelectZpList();
        model.addAttribute("zpList",zpList);
        return modelAndView;
    }
}
