package com.myblog.service;

import com.github.pagehelper.Page;
import com.myblog.pojo.Dw;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ArticleService {
    public List<Dw> findArticle(Integer pageNum);
    public List<Dw> findArticle();
    public Dw findOne(@Param("shortId") Integer shortId);
    public Boolean addArticle(@Param("title") String title, @Param("content") String content, @Param("addtime") Date addtime);
    public void deleteArticle(@Param("shortId") Integer shortId);
}
