package com.nexr.workerbee.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.UserDao;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
    
    
    @Resource
    private UserDao userDao;

    @Override
    public Long createUser(User user) {
        userDao.makePersistent(user);
        userDao.flush();
        return user.getId();
    }

    @Override
    public void upateUser(User user) {
        userDao.merge(user);
        userDao.flush();
    }

    @Override
    public void deleteUser(Long userId) {
        User user = userDao.findById(userId);
        userDao.makeTransient(user);
        userDao.flush();
    }

    @Override
    public User getUser(Long userId) {
        User user = userDao.findById(userId);
        userDao.flush();
        return user;
    }
    
}
