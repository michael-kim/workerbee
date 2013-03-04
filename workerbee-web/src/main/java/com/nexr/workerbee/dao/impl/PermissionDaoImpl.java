package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.PermissionDao;
import com.nexr.workerbee.dto.Permission;

@Repository("permissionDao")
public class PermissionDaoImpl extends GenericHibernateDao<Permission, Long> implements PermissionDao{
    
}
