package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.UserDao;
import com.nexr.workerbee.dto.User;

@Repository("userDao")
public class UserDaoImpl extends GenericHibernateDao<User, Long> implements UserDao{
    
}
