package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.TaskGroup;

public interface TaskGroupService {
    
    @Transactional
    public List<TaskGroup> findByProjectId(Long projectId);

    @Transactional
    public EntityPage<TaskGroup> getTaskGroupPage(Long projectId,int pageNum, int pageSize);

    @Transactional
    public void addTaskGroup(TaskGroup taskGroup);
    
    @Transactional
    public void deleteTaskGroup(Long taskGroupId);
    
    @Transactional
    public void updateTaskGroup(TaskGroup taskGroup);
    
    @Transactional
    public TaskGroup getTaskGroup(Long taskGroupId);
    
}
