package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.repository.PermissionDao;
import com.nexr.workerbee.dto.Permission;
import com.nexr.workerbee.service.PermissionService;

@Service("permissionService")
public class PermissionServiceImpl implements PermissionService{
    
    @Resource
    PermissionDao permissionDao;

    @Override
    public List<Permission> findAll() {
        return permissionDao.findAll();
    }
    
}
