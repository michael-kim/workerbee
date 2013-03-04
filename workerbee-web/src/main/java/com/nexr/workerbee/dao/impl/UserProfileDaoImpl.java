package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.UserProfileDao;
import com.nexr.workerbee.dto.UserProfile;

@Repository("userProfileDao")
public class UserProfileDaoImpl extends GenericHibernateDao<UserProfile, Long> implements UserProfileDao{
    
}