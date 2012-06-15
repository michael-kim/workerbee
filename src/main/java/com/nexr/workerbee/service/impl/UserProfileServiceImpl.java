package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.UserDao;
import com.nexr.workerbee.dao.UserProfileDao;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserProfileService;

@Service("userProfileService")
public class UserProfileServiceImpl implements UserProfileService{

    @Resource
    UserDao userDao;
    
    @Resource
    UserProfileDao userProfileDao;
    
    @Override
    public UserProfile findByUsername(String username) {
        List<User> list = userDao.findByCriteria(Restrictions.eq("username", username));
        if (list.size()!=1) {
            // error vomit
        }
        User user = list.get(0);
        return user.getUserProfile();
    }

    @Override
    public void upateUserProfile(UserProfile userProfile) {
        userProfileDao.merge(userProfile);
        userProfileDao.flush();
    }

    @Override
    public UserProfile findByEmail(String email) {
        List<UserProfile> list = userProfileDao.findByCriteria(Restrictions.eq("email", email));
        return (list.size()==0?null:list.get(0));
    }

}
