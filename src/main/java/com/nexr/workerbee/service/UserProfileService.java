package com.nexr.workerbee.service;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.UserProfile;

public interface UserProfileService {
    @Transactional
    public UserProfile findByUsername(String username);
}
