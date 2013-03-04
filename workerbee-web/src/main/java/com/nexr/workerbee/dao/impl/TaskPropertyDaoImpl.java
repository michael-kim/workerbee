package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.TaskPropertyDao;
import com.nexr.workerbee.dto.TaskProperty;

@Repository("taskPropertyDao")
public class TaskPropertyDaoImpl extends GenericHibernateDao<TaskProperty, Long> implements TaskPropertyDao{
    
}
