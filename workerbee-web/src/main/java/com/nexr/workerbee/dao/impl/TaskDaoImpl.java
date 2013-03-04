package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.TaskDao;
import com.nexr.workerbee.dto.Task;

@Repository("taskDao")
public class TaskDaoImpl extends GenericHibernateDao<Task, Long> implements TaskDao{
    
}
