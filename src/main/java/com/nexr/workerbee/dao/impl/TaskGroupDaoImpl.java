package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.TaskGroupDao;
import com.nexr.workerbee.dto.TaskGroup;

@Repository("taskGroupDao")
public class TaskGroupDaoImpl extends GenericHibernateDao<TaskGroup,Long> implements TaskGroupDao{

}
