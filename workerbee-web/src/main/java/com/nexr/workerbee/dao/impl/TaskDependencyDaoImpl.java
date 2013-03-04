package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.TaskDependencyDao;
import com.nexr.workerbee.dto.TaskDependency;

@Repository("taskDependecyDao")
public class TaskDependencyDaoImpl extends GenericHibernateDao<TaskDependency, TaskDependency.Id> implements TaskDependencyDao {
    
}
