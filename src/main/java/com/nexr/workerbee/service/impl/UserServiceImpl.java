package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.UserDao;
import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
    
    
    @Resource
    private UserDao userDao;

    @Override
    public Long addUser(User user) {
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
    public User findById(Long userId) {
        User user = userDao.findById(userId);
        userDao.flush();
        return user;
    }

    @Override
    public List<User> findAll() {
        List<User> list = userDao.findAll();
        userDao.flush();
        return list;
    }

    @Override
    public User findByUsername(String username) {
        List<User> list = userDao.findByCriteria(Restrictions.eq("username", username));
        return (list.size()>0 ? null : list.get(0));
    }

    @Override
    public EntityPage<User> getUserPage(int pageNum, int pageSize) {
        EntityPage<User> pager = userDao.getPage(pageNum, pageSize);
        return pager;
    }

    @Override
    public void enableUser(Long userId) {
        User user = userDao.findById(userId);
        user.setEnabled(true);
        userDao.makePersistent(user);
        userDao.flush();
    }

    @Override
    public void disableUser(Long userId) {
        User user = userDao.findById(userId);
        user.setEnabled(false);
        userDao.makePersistent(user);
        userDao.flush();
    }
}
