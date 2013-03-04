package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.repository.UserDao;
import com.nexr.workerbee.repository.UserProfileDao;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserProfileService;

import static org.hibernate.criterion.Restrictions.*;

@Service("userProfileService")
public class UserProfileServiceImpl implements UserProfileService{

    @Resource
    UserDao userDao;
    
    @Resource
    UserProfileDao userProfileDao;
    
    @Override
    public UserProfile findByUsername(String username) {
        List<User> list = userDao.findByCriteria(eq("username", username));
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
        List<UserProfile> list = userProfileDao.findByCriteria(eq("email", email));
        return (list.size()==0?null:list.get(0));
    }

    @Override
    public boolean isUpdatableEmail(String email, String username) {
        
        List<UserProfile> list = userProfileDao.findByCriteria(eq("email", email));
        
        // there is no the same email address.
        if (list.size()==0) return true;
        
        // There are more than two email address. it cannot be possible.
        if (list.size()>1) return false;
        
        if (list.size()==1) {
            UserProfile profile = list.get(0);
            if (profile.getUser().getUsername().equals(username)) return true;
            else return false;
        }
        return false;
    }

}
