package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.repository.impl.EntityPage;
import com.nexr.workerbee.dto.User;

public interface UserService{
    
    @Transactional
    public List<User> findAll();
    
    @Transactional
    public Long addUser(User user);
    
    @Transactional
    public void upateUser(User user);
    
    @Transactional
    public void deleteUser(Long userId);
    
    @Transactional
    public User findById(Long userId);
    
    @Transactional
    public User findByUsername(String username);
    
    @Transactional
    public EntityPage<User> getUserPage(int pageNum,int pageSize);
    
    @Transactional
    public void enableUser(Long userId);
    
    @Transactional
    public void disableUser(Long userId);
    
}
