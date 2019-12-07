package com.myblog.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.myblog.dao.ArticleDao;
import com.myblog.pojo.Dw;
import com.myblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Transactional
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDao articleDao;


    @Override
    public List<Dw> findArticle(Integer pageNum) {
        PageHelper.startPage(pageNum,10);
        return articleDao.findALL();
    }

    @Override
    public List<Dw> findArticle() {
        return articleDao.findALL();
    }

    @Override
    public Dw findOne(Integer shortId) {
        return articleDao.findOne(shortId);
    }

    @Override
    public Boolean addArticle(String title, String content, Date addtime) {
        if(title!=null&&content!=null){
            articleDao.AddArticle(title,content,addtime);
            return true;
        }
       return false;
    }

    @Override
    public void deleteArticle(Integer shortId) {
        articleDao.DeleteArticle(shortId);

    }
}
