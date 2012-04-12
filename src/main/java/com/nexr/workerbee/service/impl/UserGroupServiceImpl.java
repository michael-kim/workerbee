package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.UserGroupDao;
import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.UserGroup;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserGroupService;

@Service("userGroupService")
public class UserGroupServiceImpl implements UserGroupService{
    
    @Resource
    UserGroupDao userGroupDao;

    @Override
    public List<UserGroup> getAllUserGroups() {
        return userGroupDao.findAll();
    }

    
    @Override
    public void deleteUserGroup(Long userGroupId) {
        UserGroup userGroup = userGroupDao.findById(userGroupId);
        for (UserProfile profile :userGroup.getUserProfiles()){
            profile.setUserGroup(null);
        }
        userGroupDao.makeTransient(userGroup);
        userGroupDao.flush();
    }


    @Override
    public UserGroup getUserGroup(Long userGroupId) {
        UserGroup userGroup = userGroupDao.findById(userGroupId);
        return userGroup;
    }

    @Override
    public void updateUserGroup(UserGroup userGroup) {
        userGroupDao.merge(userGroup);
        userGroupDao.flush();
        
    }

    @Override
    public void addUserGroup(UserGroup userGroup) {
        userGroupDao.makePersistent(userGroup);
    }


    @Override
    public EntityPage<UserGroup> getUserGroupPage(int pageNum, int pageSize) {
        return userGroupDao.getPage(pageNum, pageSize);
    }
    
}
