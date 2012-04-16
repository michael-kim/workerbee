package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.Task;

public interface TaskService {
    
    @Transactional
    public List<Task> findByTaskGroupId(Long taskGroupId);
    
    @Transactional
    public EntityPage<Task> getPage(Long taskGroupId, int pageNum, int pageSize);
    
    @Transactional
    public void deleteTask(Long taskId);
    
    @Transactional
    public Task findById(Long taskId);
    
}
