package com.nexr.workerbee.repository.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.repository.UserDao;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
    "classpath:spring/root-beans.xml",
    "classpath:spring/db-beans.xml"})
public class UserDaoTest {
    
    @Autowired
    UserDao userDao;
    
    @Test
    @Transactional
    @Rollback(value=false)
    public void test(){
        User user = new User();
        user.setUsername("user");
        user.setPassword("11");

        
        UserProfile profile = user.getUserProfile();
        
        userDao.makePersistent(user);
        userDao.flush();
        userDao.clear();
        
        
        User user3 = new User();
        user3.setUsername("user2");
        user3.setPassword("22");
        userDao.makePersistent(user3);
        userDao.flush();
        
        userDao.makePersistent(user3);
        userDao.flush();
        userDao.clear();
        
        user3 = userDao.merge(user3);
        userDao.makeTransient(user3);
        userDao.flush();
        userDao.clear();
    }
}
