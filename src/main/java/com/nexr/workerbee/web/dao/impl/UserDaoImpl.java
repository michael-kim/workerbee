package com.nexr.workerbee.web.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.web.dao.UserDao;
import com.nexr.workerbee.web.dto.User;

@Repository("userDao")
public class UserDaoImpl extends GenericHibernateDao<User, Long> implements UserDao{
    
}
