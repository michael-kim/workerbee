package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.TaskGroupDao;
import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.TaskGroup;
import com.nexr.workerbee.service.TaskGroupService;

@Service("taskGroupService")
public class TaskGroupServieImpl implements TaskGroupService{

    @Resource
    TaskGroupDao taskGroupDao;
    
    @Override
    public void addTaskGroup(TaskGroup taskGroup) {
        taskGroupDao.makePersistent(taskGroup);
        taskGroupDao.flush();
    }

    @Override
    public void deleteTaskGroup(Long taskGroupId) {
        taskGroupDao.deleteById(taskGroupId);
        taskGroupDao.flush();
    }

    @Override
    public void updateTaskGroup(TaskGroup taskGroup) {
        taskGroupDao.merge(taskGroup);
        taskGroupDao.flush();
    }

    @Override
    public TaskGroup getTaskGroup(Long taskGroupId) {
        return taskGroupDao.findById(taskGroupId);
    }

    @Override
    public List<TaskGroup> findByProjectId(Long projectId) {
        DetachedCriteria dcrit = DetachedCriteria.forClass(TaskGroup.class)
                .createAlias("project", "p")
                .add(Restrictions.eq("p.id", projectId));
        return taskGroupDao.findByDetachedCriteria(dcrit);
    }
    
    @Override
    public EntityPage<TaskGroup> getTaskGroupPage(Long projectId,int pageNum, int pageSize){
        DetachedCriteria dcrit = DetachedCriteria.forClass(TaskGroup.class)
                .createAlias("project", "p")
                .add(Restrictions.eq("p.id", projectId));
        return taskGroupDao.getPage(dcrit, pageNum, pageSize);
    }
    
}
