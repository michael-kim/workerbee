package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.TaskPropertyDao;
import com.nexr.workerbee.dto.TaskProperty;

@Repository("taskPropertyDao")
public class TaskPropertyDaoImpl extends GenericHibernateDao<TaskProperty, Long> implements TaskPropertyDao{
    
}
