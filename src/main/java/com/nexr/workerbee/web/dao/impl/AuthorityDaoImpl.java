package com.nexr.workerbee.web.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.web.dao.AuthorityDao;
import com.nexr.workerbee.web.dto.Authority;

@Repository("authorityDao")
public class AuthorityDaoImpl extends GenericHibernateDao<Authority, Long> implements AuthorityDao{
    
}
