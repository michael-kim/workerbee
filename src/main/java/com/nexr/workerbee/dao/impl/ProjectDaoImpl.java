package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.ProjectDao;
import com.nexr.workerbee.dto.Project;

@Repository("projectDao")
public class ProjectDaoImpl extends GenericHibernateDao<Project, Long> implements ProjectDao{
    
}
