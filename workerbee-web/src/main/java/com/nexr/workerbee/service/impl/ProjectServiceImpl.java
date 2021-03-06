package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.repository.ProjectDao;
import com.nexr.workerbee.dto.Project;
import com.nexr.workerbee.service.ProjectService;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService {

    @Resource
    ProjectDao projectDao;
    
    @Override
    public List<Project> findAll() {
        return projectDao.findAll();
    }

    @Override
    public void addProject(Project project) {
        projectDao.makePersistent(project);
        projectDao.flush();
    }

    @Override
    public void deleteProject(Long projectId) {
        Project project = projectDao.findById(projectId);
        projectDao.makeTransient(project);
        projectDao.flush();        
    }

    @Override
    public void updateProject(Project project) {
        projectDao.merge(project);
        projectDao.flush();
    }

    @Override
    public Project findById(Long projectId) {
        return projectDao.findById(projectId);
    }
    
    
}
