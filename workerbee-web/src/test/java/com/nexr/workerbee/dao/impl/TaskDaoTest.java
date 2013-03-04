package com.nexr.workerbee.repository.impl;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.repository.TaskDao;
import com.nexr.workerbee.repository.TaskDependencyDao;
import com.nexr.workerbee.dto.HiveTask;
import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.dto.TaskDependency;
import com.nexr.workerbee.dto.TaskGroup;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
    "classpath:spring/root-beans.xml",
    "classpath:spring/db-beans.xml"})
public class TaskDaoTest {
    
    @Resource
    TaskDao taskDao;
    
    @Resource
    TaskDependencyDao taskDependecyDao;
    
    @Test
    @Transactional
    @Rollback(value=false)
    public void test(){
        Task task1 = new HiveTask();
        task1.setName("test1");
        task1.setDescription("test1");
        
        task1.setTaskGroup(new TaskGroup((long)501));
        
        taskDao.makePersistent(task1);
        
        Task task2 = new HiveTask();
        task2.setName("test2");
        task2.setDescription("test3");
        task2.setTaskGroup(new TaskGroup((long)501));
        taskDao.makePersistent(task2);
        
        TaskDependency dep = new TaskDependency(task1,task2);
        taskDependecyDao.makePersistent(dep);
        
        System.out.println(task1.getId());
        
        Task task3 = taskDao.findById(task2.getId());
        
        System.out.println(task3.getParentTaskDeps().size());
        for(TaskDependency taskDep: task3.getParentTaskDeps()){
            System.out.println(taskDep.getParentTask().getId()+" --> "+taskDep.getChildTask().getId());
        }
    }
}
