package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.TaskComment;

public interface TaskCommentService {
    
    @Transactional
    public List<TaskComment> findAll(Long taskId);
    
    @Transactional
    public void delete(Long taskCommentId);
    
    @Transactional
    public void update(TaskComment taskComment);
    
    @Transactional
    public void post(TaskComment taskComment);
    
}
