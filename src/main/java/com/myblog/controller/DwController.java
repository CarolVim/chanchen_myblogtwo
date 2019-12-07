package com.myblog.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.myblog.pojo.Dw;
import com.myblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/myblog")
public class DwController {
    @Autowired
    private ArticleService articleService;
    @RequestMapping(value = "/Bt.html",method = RequestMethod.GET)
    public ModelAndView Picture(@RequestParam(value = "pageNo",defaultValue = "1") int pageNo, @RequestParam(value = "pageSize",defaultValue = "5")int pageSize, ModelAndView modelAndView, Model model){
        modelAndView=new ModelAndView("/Bt");
        PageHelper.startPage(pageNo,10);
        List<Dw> shortList=articleService.findArticle();
        PageInfo<Dw> articleList=new PageInfo<Dw>(shortList);
        model.addAttribute("shortList",articleList);
        return modelAndView;
    }
}
