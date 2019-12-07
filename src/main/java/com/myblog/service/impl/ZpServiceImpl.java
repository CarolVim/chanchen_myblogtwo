package com.myblog.service.impl;

import com.myblog.dao.ZpDao;
import com.myblog.pojo.Zp;
import com.myblog.service.ZpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
@Service("zpService")
public class ZpServiceImpl implements ZpService {
    @Autowired
    private ZpDao zpDao;
    @Override
    public List<Zp> SelectZpList() {
        List<Zp> zpList=zpDao.findZpList();
        return zpList;
    }
}
