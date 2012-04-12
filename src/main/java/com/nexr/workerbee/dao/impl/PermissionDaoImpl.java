package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.PermissionDao;
import com.nexr.workerbee.dto.Permission;

@Repository("permissionDao")
public class PermissionDaoImpl extends GenericHibernateDao<Permission, Long> implements PermissionDao{
    
}
