package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.UserProfileDao;
import com.nexr.workerbee.dto.UserProfile;

@Repository("userProfileDao")
public class UserProfileDaoImpl extends GenericHibernateDao<UserProfile, Long> implements UserProfileDao{
    
}