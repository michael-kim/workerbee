package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.UserGroup;

public interface UserGroupService {
    
    @Transactional
    public void addUserGroup(UserGroup userGroup);

    @Transactional
    public List<UserGroup> getAllUserGroups();
    
    @Transactional
    public EntityPage<UserGroup> getUserGroupPage(int pageNum,int pageSize);
    
    @Transactional
    public void deleteUserGroup(Long userGroupId);
    
    @Transactional
    public UserGroup getUserGroup(Long userGroupId);
    
    @Transactional
    public void updateUserGroup(UserGroup userGroup);
    
}
