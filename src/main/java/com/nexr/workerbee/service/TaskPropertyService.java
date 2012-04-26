package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.TaskProperty;

public interface TaskPropertyService {
    
    @Transactional
    public void delete(Long taskPropertyId);
    
    @Transactional
    public void update(TaskProperty taskProperty);
    
    @Transactional
    public void add(TaskProperty taskProperty);
    
    @Transactional
    public TaskProperty findById(Long taskPropertyId);
    
    @Transactional
    public List<TaskProperty> findAll();
    
    @Transactional
    public EntityPage<TaskProperty> getPage(int pageNum,int pageSize);
    
}
