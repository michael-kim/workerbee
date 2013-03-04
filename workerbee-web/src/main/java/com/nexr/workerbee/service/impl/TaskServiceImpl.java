package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.nexr.workerbee.repository.TaskDao;
import com.nexr.workerbee.repository.impl.EntityPage;
import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.dto.TaskDependency;
import com.nexr.workerbee.service.TaskService;

@Service("taskService")
public class TaskServiceImpl implements TaskService{
    
    @Resource
    TaskDao taskDao;
    
    @Override
    public List<Task> findByTaskGroupId(Long taskGroupId) {
        DetachedCriteria dcrit = DetachedCriteria.forClass(Task.class);
        dcrit.createAlias("taskGroup", "t").add(Restrictions.eq("t.id", taskGroupId));
        return taskDao.findByDetachedCriteria(dcrit);
    }

    @Override
    public EntityPage<Task> getPage(Long taskGroupId, int pageNum, int pageSize) {
        DetachedCriteria dcrit = DetachedCriteria.forClass(Task.class);
        dcrit.createAlias("taskGroup", "t").add(Restrictions.eq("t.id", taskGroupId));
        return taskDao.getPage(dcrit, pageNum, pageSize);
    }

    @Override
    public void deleteTask(Long taskId) {
        taskDao.deleteById(taskId);
        taskDao.flush();
    }

    @Override
    public Task findById(Long taskId) {
        return taskDao.findById(taskId);
    }
    
    @Override
    public void addTask(Task task) {
        taskDao.makePersistent(task);
        taskDao.flush();
    }

    @Override
    public void updateTask(Task task) {
        taskDao.merge(task);
        taskDao.flush();
    }

    @Override
    public void addTask(Task task, Long[] precedingTaskIds) {
        taskDao.makePersistent(task);
        for (Long id : precedingTaskIds){
            Task parentTask = taskDao.findById(id);
            TaskDependency taskDep = new TaskDependency(parentTask, task);
        }
        taskDao.makePersistent(task);
        taskDao.flush();
    }
}
