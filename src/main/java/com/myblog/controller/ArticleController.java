package com.myblog.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.myblog.pojo.Dw;
import com.myblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
public class ArticleController {
    @Autowired
    private ArticleService articleService;

//    @RequestMapping(value = "/myblog/article.html")
//    public ModelAndView ArticleList(ModelAndView modelAndView) throws IOException {
//        modelAndView=new ModelAndView("/wenzhangtwo");
//        return modelAndView;
//    }
//    @RequestMapping(value = "/myblog/article.do",method = RequestMethod.POST)
//    public void Article(HttpServletResponse response,Model model,@RequestParam(defaultValue = "1",value="pageNum") Integer pageNum,ModelAndView modelAndView) throws IOException {
//        modelAndView=new ModelAndView("/wenzhangtwo");
//        List<Dw> articleList=articleService.findArticle(pageNum);
//        PageInfo<Dw> pageInfo=new PageInfo<>(articleList);
//        Gson gson=new Gson();
//        String json=gson.toJson(pageInfo);
//        response.setContentType("text/html;charset=UTF-8");
//        response.getWriter().write(json);
//    }


    @RequestMapping(value = "/myblog/Change.do",method = RequestMethod.GET)
    public ModelAndView EditorArticle(HttpServletRequest request,ModelAndView modelAndView,Model model){
        modelAndView=new ModelAndView("/wenzhang");
        String shortId=request.getParameter("shortId");
        Dw dwList=articleService.findOne(Integer.valueOf(shortId));
        model.addAttribute("articleLists",dwList);
        return modelAndView;
    }
    @RequestMapping(value = "/myblog/Article.html",method = RequestMethod.GET)
    public ModelAndView editorPage(ModelAndView modelAndView){
        modelAndView=new ModelAndView("/Article");
        return modelAndView;
    }
    @RequestMapping(value = "/myblog/Addarticle.do",method = RequestMethod.POST)
    public ModelAndView Editor(String title, String content, Date dates, ModelAndView modelAndView, Model model, HttpServletRequest request) throws ParseException {
        title=request.getParameter("title");
        content=request.getParameter("content");
        dates = new Date();
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:ss");
        String addtime = time.format(dates);
        Date ctime=time.parse(addtime);
        System.out.println("title:"+title+"content:"+content+"date:"+ctime);
        Boolean msg=articleService.addArticle(title,content,ctime);
        if (msg==true){
            modelAndView=new ModelAndView("/wenzhangtwo");
            System.out.println("添加成功!");
            return modelAndView;

        }
        modelAndView=new ModelAndView("/wenzhangtwo");
        System.out.println("添加失败！");
        return modelAndView;
    }
    @RequestMapping(value = "/myblog/Deletewz.do",method = RequestMethod.GET)
    public ModelAndView Deletewz(HttpServletRequest request,String shortId,ModelAndView modelAndView){
        modelAndView=new ModelAndView("/wenzhangtwo");
        shortId=request.getParameter("shortId");
        Integer Id=Integer.valueOf(shortId);
        articleService.deleteArticle(Id);
        System.out.println("删除成功!");
        return modelAndView;
    }


}
