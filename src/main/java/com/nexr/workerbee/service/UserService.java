package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.User;

public interface UserService{
    
    @Transactional
    public List<User> getAllUsers();
    
    @Transactional
    public Long createUser(User user);
    
    @Transactional
    public void upateUser(User user);
    
    @Transactional
    public void deleteUser(Long userId);
    
    @Transactional
    public User getUser(Long userId);
}
