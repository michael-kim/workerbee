package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.Permission;

public interface PermissionService {
    @Transactional
    
    public List<Permission> getAllPermissions();
    
}
