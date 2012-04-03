package com.nexr.workerbee.dao.impl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.AuthorityDao;
import com.nexr.workerbee.dao.UserDao;
import com.nexr.workerbee.dto.Authority;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
    "classpath:spring/root-beans.xml",
    "classpath:spring/db-beans.xml"})
public class UserDaoTest {
    
    @Autowired
    UserDao userDao;
    
    @Autowired
    AuthorityDao authorityDao; 
    
    @Test
    @Transactional
    @Rollback(value=false)
    public void test(){
        User user = new User();
        user.setUsername("user");
        user.setPassword("11");

        Authority auth1 = new Authority();
        auth1.setAuthority("ROLE_USER");
        
        UserProfile profile = user.getUserProfile();
        profile.addAuthority(auth1);
        
        Authority auth2 = new Authority();
        auth2.setAuthority("ROLE_ADMIN");
        
        profile.addAuthority(auth2);
        auth2.setUserProfile(profile);
        
        userDao.makePersistent(user);
        userDao.flush();
        userDao.clear();
        
        User user2 = userDao.findById(user.getId(), false);
        List<Authority> auths = user2.getUserProfile().getAuthority();
        for(Authority a : auths){
            System.out.println(a.getAuthority());
        }
        
        auth2 = authorityDao.merge(auth2);
        
        User user3 = new User();
        user3.setUsername("user2");
        user3.setPassword("22");
        userDao.makePersistent(user3);
        userDao.flush();
        
        user3.getUserProfile().addAuthority(auth2);
        userDao.makePersistent(user3);
        userDao.flush();
        userDao.clear();
        
        user3 = userDao.merge(user3);
        userDao.makeTransient(user3);
        userDao.flush();
        userDao.clear();
    }
}
