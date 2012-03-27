package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.AuthorityDao;
import com.nexr.workerbee.dto.Authority;

@Repository("authorityDao")
public class AuthorityDaoImpl extends GenericHibernateDao<Authority, Long> implements AuthorityDao{
    
}
