package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.TaskDependencyDao;
import com.nexr.workerbee.dto.TaskDependency;

@Repository("taskDependecyDao")
public class TaskDependencyDaoImpl extends GenericHibernateDao<TaskDependency, TaskDependency.Id> implements TaskDependencyDao {
    
}
