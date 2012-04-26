package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.TaskPropertyDao;
import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.TaskProperty;
import com.nexr.workerbee.service.TaskPropertyService;

@Service("taskPropertyService")
public class TaskPropertyServiceImpl implements TaskPropertyService{
    
    @Resource
    TaskPropertyDao taskPropertyDao;

    @Override
    public void delete(Long taskPropertyId) {
        taskPropertyDao.deleteById(taskPropertyId);
        taskPropertyDao.flush();
    }

    @Override
    public void update(TaskProperty taskProperty) {
        taskPropertyDao.merge(taskProperty);
        taskPropertyDao.flush();
        
    }

    @Override
    public void add(TaskProperty taskProperty) {
        taskPropertyDao.makePersistent(taskProperty);
        taskPropertyDao.flush();
    }

    @Override
    public TaskProperty findById(Long taskPropertyId) {
        return taskPropertyDao.findById(taskPropertyId);
    }

    @Override
    public List<TaskProperty> findAll() {
        return taskPropertyDao.findAll();
    }

    @Override
    public EntityPage<TaskProperty> getPage(int pageNum, int pageSize) {
        return taskPropertyDao.getPage(pageNum, pageSize);
    }
    
}
