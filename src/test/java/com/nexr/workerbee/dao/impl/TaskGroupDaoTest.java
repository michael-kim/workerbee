package com.nexr.workerbee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dao.TaskGroupDao;
import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.TaskGroup;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
    "classpath:spring/root-beans.xml",
    "classpath:spring/db-beans.xml"})
public class TaskGroupDaoTest {
    private static final Logger logger = LoggerFactory.getLogger(TaskGroupDaoTest.class);
    
    @Resource
    TaskGroupDao taskGroupDao;
    
    @Test
    @Transactional
    @Rollback(false)
    public void testTreeTraverse(){
        
        TaskGroup group1 = new TaskGroup();
        group1.setName("group1");
        
        TaskGroup group2 = new TaskGroup();
        group2.setName("group2");
        
        taskGroupDao.makePersistent(group1);
        
        group1.addChildren(group2);
        group2.setParent(group1);
        
        taskGroupDao.makePersistent(group2);
        taskGroupDao.flush();
        
    }
    
    @Test
    @Transactional
    @Rollback(true)
    public void test(){
        TaskGroup group = new TaskGroup();
        group.setName("first group");
        taskGroupDao.makePersistent(group);

        List<TaskGroup> list= taskGroupDao.findAll();
        
        int i=0;
        for(TaskGroup g:list){
            System.out.println(g.getName());
            i++;
            g.setName("group "+i);
            taskGroupDao.makePersistent(g);
            System.out.println(g.getName());
        }
        taskGroupDao.flush();
        
        EntityPage<TaskGroup> page = taskGroupDao.getPage(1, 2);
        List<TaskGroup> groups = page.getList();
        for(TaskGroup g:groups){
            System.out.println(g.getName());
        }
        System.out.println(page);
        taskGroupDao.flush();
        taskGroupDao.clear();
    }
    
}