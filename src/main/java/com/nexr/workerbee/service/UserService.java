package com.nexr.workerbee.service;

import java.util.List;

import com.nexr.workerbee.dto.User;

public interface UserService {
    public List<User> getAllUsers();
    
    public Long createUser(User user);
    
    public void upateUser(User user);
    
    public void deleteUser(Long userId);
    
    public User getUser(Long userId);
}
