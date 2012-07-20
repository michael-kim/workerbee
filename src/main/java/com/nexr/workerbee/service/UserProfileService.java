package com.nexr.workerbee.service;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.UserProfile;

public interface UserProfileService {
    
    @Transactional
    public void upateUserProfile(UserProfile userProfile);
    
    @Transactional
    public UserProfile findByUsername(String username);
    
    @Transactional
    public UserProfile findByEmail(String email);
    
    @Transactional
    public boolean isUpdatableEmail(String email, String username);
    
}
