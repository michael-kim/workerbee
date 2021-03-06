package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.repository.TaskCommentDao;
import com.nexr.workerbee.repository.TaskDao;
import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.dto.TaskComment;
import com.nexr.workerbee.service.TaskCommentService;

@Service("taskCommentService")
public class TaskCommentServiceImpl implements TaskCommentService{
    
    @Resource
    TaskCommentDao taskCommentDao;
    
    @Resource
    TaskDao taskDao;

    @Override
    public List<TaskComment> findAll(Long taskId) {
        Task task = taskDao.findById(taskId);
        return task.getTaskComments();
    }

    @Override
    public void deleteTaskComment(Long taskCommentId) {
        taskCommentDao.deleteById(taskCommentId);
        taskCommentDao.flush();
    }

    @Override
    public void updateTaskComment(TaskComment taskComment) {
        taskCommentDao.merge(taskComment);
        taskCommentDao.flush();
    }

    @Override
    public void addTaskComment(TaskComment taskComment) {
        taskCommentDao.makePersistent(taskComment);
        taskCommentDao.flush();
    }
    
}
