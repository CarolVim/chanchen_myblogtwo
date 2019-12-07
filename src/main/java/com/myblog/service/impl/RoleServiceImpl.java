package com.myblog.service.impl;

import com.myblog.dao.RoleDao;
import com.myblog.pojo.User;
import com.myblog.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;
    @Override
    public List<User> findRole() {
        return roleDao.findSingle();
    }
}
