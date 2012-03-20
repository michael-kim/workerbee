package com.nexr.workerbee.web.dao.impl;

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

import com.nexr.workerbee.web.dao.GroupDao;
import com.nexr.workerbee.web.dto.Group;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
    "classpath:spring/root-beans.xml",
    "classpath:spring/db-beans.xml"})
public class GroupDaoTest {
    private static final Logger logger = LoggerFactory.getLogger(GroupDaoTest.class);
    
    @Resource
    GroupDao groupDao;
    
    @Test
    @Transactional
    @Rollback(false)
    public void test(){
        Group group = new Group();
        group.setName("first group");
        groupDao.makePersistent(group);

        List<Group> list= groupDao.findAll();
        
        int i=0;
        for(Group g:list){
            System.out.println(g.getName());
            i++;
            g.setName("group "+i);
            groupDao.makePersistent(g);
            System.out.println(g.getName());
        }
        groupDao.flush();
        
        EntityPage<Group> page = groupDao.getPage(1, 2);
        List<Group> groups = page.getList();
        for(Group g:groups){
            System.out.println(g.getName());
        }
        System.out.println(page);
        groupDao.flush();
        groupDao.clear();
    }
    
    @Test
    @Transactional
    public void testPagination(){
    }
}