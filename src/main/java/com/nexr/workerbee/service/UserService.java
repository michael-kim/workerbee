package com.nexr.workerbee.service;

import com.nexr.workerbee.dto.User;

public interface UserService {
    
    public Long createUser(User user);
    
    public void upateUser(User user);
    
    public void deleteUser(Long userId);
    
    public User getUser(Long userId);
}
