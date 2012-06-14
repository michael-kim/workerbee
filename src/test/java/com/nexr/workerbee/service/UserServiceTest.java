package com.nexr.workerbee.service;

import javax.annotation.Resource;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserGroup;
import com.nexr.workerbee.dto.UserProfile;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
        "classpath:spring/root-beans.xml",
        "classpath:spring/db-beans.xml"})
public class UserServiceTest {
    
    @Resource
    UserService userService;
    
    @Test
    @Transactional
    public void createUserTest(){
        User user = new User("testuser","password",true);
        UserProfile profile = new UserProfile("michael","kim","a@email.com");
        UserGroup group = new UserGroup("group1","test group");
        profile.setUserGroup(group);

        user.setUserProfile(profile);
        Long userId = userService.addUser(user);
        
        User user2 = userService.findById(userId);
        Assert.assertEquals("testuser",user2.getUsername());
        
        profile =user2.getUserProfile();
        Assert.assertEquals("michael", profile.getFirstName());
        
        group = profile.getUserGroup();
        
        Assert.assertEquals("group1", group.getGroupName());
        
        user2.setUsername("testuser2");
        userService.upateUser(user2);
        
        User user3 = userService.findById(userId);
        
        Assert.assertEquals("testuser2", user3.getUsername());
        
        userService.deleteUser(userId);
        User user4 = userService.findById(userId);
        
        Assert.assertNull(user4);
    }
}
