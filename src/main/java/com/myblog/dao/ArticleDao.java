package com.myblog.dao;

import com.github.pagehelper.Page;
import com.myblog.pojo.Dw;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ArticleDao {
    Page<Dw> findALL();
    Dw findOne(@Param("shortId") Integer shortId);
   void AddArticle(@Param("title") String title, @Param("content") String content, @Param("addtime")Date addtime);
   void DeleteArticle(@Param("shortId") Integer shortId);
}
