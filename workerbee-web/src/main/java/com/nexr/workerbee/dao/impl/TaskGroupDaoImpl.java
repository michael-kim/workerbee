package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.TaskGroupDao;
import com.nexr.workerbee.dto.TaskGroup;

@Repository("taskGroupDao")
public class TaskGroupDaoImpl extends GenericHibernateDao<TaskGroup,Long> implements TaskGroupDao{

}
