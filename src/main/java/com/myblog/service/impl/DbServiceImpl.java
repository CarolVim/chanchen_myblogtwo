package com.myblog.service.impl;

import com.myblog.dao.DbDao;
import com.myblog.pojo.Db;
import com.myblog.service.DbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("dbService")
public class DbServiceImpl implements DbService {
    @Autowired
    private DbDao dbDao;
    @Override
    public List<Db> findAll() {
        List<Db> dbList=dbDao.SelectAll();
       return dbList;
    }
}
