package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.UserGroupDao;
import com.nexr.workerbee.dto.UserGroup;

@Repository("userGroupDao")
public class UserGroupDaoImpl extends GenericHibernateDao<UserGroup, Long> implements UserGroupDao{
    
}
