package com.nexr.workerbee.web.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.web.dao.GroupDao;
import com.nexr.workerbee.web.dto.Group;

@Repository("groupDao")
public class GroupDaoImpl extends GenericHibernateDao<Group,Long> implements GroupDao{

}
