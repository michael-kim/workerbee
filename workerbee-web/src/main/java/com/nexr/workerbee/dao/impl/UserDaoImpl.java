package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.UserDao;
import com.nexr.workerbee.dto.User;

@Repository("userDao")
public class UserDaoImpl extends GenericHibernateDao<User, Long> implements UserDao{
    
}
