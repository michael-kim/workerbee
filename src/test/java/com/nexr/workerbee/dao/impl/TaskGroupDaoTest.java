package com.nexr.workerbee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.ProjectDao;
import com.nexr.workerbee.dao.TaskGroupDao;
import com.nexr.workerbee.dto.Project;
import com.nexr.workerbee.dto.TaskGroup;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
    "classpath:spring/root-beans.xml",
    "classpath:spring/db-beans.xml"})
public class TaskGroupDaoTest {
    private static final Logger logger = LoggerFactory.getLogger(TaskGroupDaoTest.class);
    
    @Resource
    TaskGroupDao taskGroupDao;
    
    @Resource
    ProjectDao projectDao;
    
    @Test
    @Transactional
    @Rollback(true)
    public void addTest(){
        Project project = new Project();
        project.setName("project222");
        project.setDescription("description");
        projectDao.makePersistent(project);
        projectDao.flush();
        
        Long projectId = project.getId();
        
        Project project2 = new Project();
        project2.setId(projectId);
        
        TaskGroup taskGroup = new TaskGroup();
        taskGroup.setName("task group name");
        taskGroup.setDescription("description");
        taskGroup.setProject(project2);
        
        taskGroupDao.makePersistent(taskGroup);
        taskGroupDao.flush();
        
        Assert.assertEquals("project222", taskGroup.getProject().getName());
    }
    
    @Test
    @Transactional
    @Rollback(true)
    public void test2(){
        Project project = new Project((long)401);
        TaskGroup taskGroup = new TaskGroup();
        taskGroup.setProject(project);
        List<TaskGroup> list = taskGroupDao.findByExample(taskGroup);
        Assert.assertEquals(2, list.size());
    }
    
}