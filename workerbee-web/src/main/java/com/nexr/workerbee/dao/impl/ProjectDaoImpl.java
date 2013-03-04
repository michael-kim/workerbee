package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.ProjectDao;
import com.nexr.workerbee.dto.Project;

@Repository("projectDao")
public class ProjectDaoImpl extends GenericHibernateDao<Project, Long> implements ProjectDao{
    
}
