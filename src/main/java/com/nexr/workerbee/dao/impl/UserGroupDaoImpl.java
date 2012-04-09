package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.UserGroupDao;
import com.nexr.workerbee.dto.UserGroup;

@Repository("userGroupDao")
public class UserGroupDaoImpl extends GenericHibernateDao<UserGroup, Long> implements UserGroupDao{
    
}
