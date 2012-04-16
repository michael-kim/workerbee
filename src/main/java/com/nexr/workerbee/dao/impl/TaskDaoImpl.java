package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.TaskDao;
import com.nexr.workerbee.dto.Task;

@Repository("taskDao")
public class TaskDaoImpl extends GenericHibernateDao<Task, Long> implements TaskDao{
    
}
