package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.UserGroup;

public interface UserGroupService {

    @Transactional
    public List<UserGroup> getAllUserGroups();
    
    @Transactional
    public void deleteUserGroup(Long userGroupId);
    
    @Transactional
    public UserGroup getUserGroup(Long userGroupId);
    
    @Transactional
    public void updateUserGroup(UserGroup userGroup);
}
