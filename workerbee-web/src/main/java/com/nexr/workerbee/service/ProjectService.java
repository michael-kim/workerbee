package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.Project;

public interface ProjectService {
    
    @Transactional
    public Project findById(Long projectId);
    
    @Transactional
    public List<Project> findAll();
    
    @Transactional
    public void addProject(Project project);
    
    @Transactional
    public void deleteProject(Long projectId);
    
    @Transactional
    public void updateProject(Project project);
}
