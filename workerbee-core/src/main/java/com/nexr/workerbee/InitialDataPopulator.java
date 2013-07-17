package com.nexr.workerbee;

import java.util.Date;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.domain.Permission;
import com.nexr.workerbee.domain.User;
import com.nexr.workerbee.domain.UserGroup;
import com.nexr.workerbee.domain.UserProfile;
import com.nexr.workerbee.repository.PermissionRepository;
import com.nexr.workerbee.repository.UserGroupRepository;
import com.nexr.workerbee.repository.UserProfileRepository;
import com.nexr.workerbee.repository.UserRepository;

@Component
public class InitialDataPopulator {
    Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Resource
    UserRepository userRepository;
    
    @Resource
    PermissionRepository permissionRepository;
    
    @Resource
    UserGroupRepository userGroupRepository;
    
    @Resource
    UserProfileRepository userProfileRepository;
    
    @Resource
    Md5PasswordEncoder md5PasswordEncoder;
    
    private static boolean IS_POPULATED = false;
    
    @Transactional
    private void deleteAll() {
    }
    
    private boolean determinePopulate() {
        User admin = userRepository.findByUsername("admin");
        if (admin != null) {
            logger.info("user already exists, skip populate initial data");
            return false;
        }
        return true;
    }
    
    public void insertRandomUser(int num) {
        UserGroup group = userGroupRepository.findByGroupName("USER_GROUP");
        for (int i = 0; i < num; i++) {
            User user = new User("test" + i, md5PasswordEncoder.encodePassword("test", null), true);
            userRepository.save(user);
            
            UserProfile profile = new UserProfile("guest");
            profile.setUser(user);
            profile.setUserGroup(group);
            profile.setEmail("test"+i+"@test.com");
            profile.setCreated(new Date());
            userProfileRepository.save(profile);
        }
    }
    
    @Transactional
    public void populate() {
        if (IS_POPULATED) {
            logger.info("Already populated before.");
            return;
        }
        
        Permission perm1 = new Permission("ROLE_ADMIN");
        Permission perm2 = new Permission("ROLE_USER");
        permissionRepository.save(perm1);
        permissionRepository.save(perm2);
        
        UserGroup grp1 = new UserGroup("ADMIN_GROUP", "admin group");
        grp1.addPermissions(perm1);
        grp1.addPermissions(perm2);
        
        UserGroup grp2 = new UserGroup("USER_GROUP", "user group");
        grp2.addPermissions(perm2);
        
        userGroupRepository.save(grp1);
        userGroupRepository.save(grp2);
        
        User usr1 = new User("admin", md5PasswordEncoder.encodePassword("admin", null), true);
        User usr2 = new User("guest", md5PasswordEncoder.encodePassword("guest", null), true);
        User usr3 = new User("user", md5PasswordEncoder.encodePassword("user", null), true);
        
        userRepository.save(usr1);
        userRepository.save(usr2);
        userRepository.save(usr3);
        
        UserProfile profile1 = new UserProfile("admin");
        profile1.setUser(usr1);
        profile1.setUserGroup(grp1);
        profile1.setCreated(new Date());
        
        UserProfile profile2 = new UserProfile("user");
        profile2.setUser(usr2);
        profile2.setUserGroup(grp2);
        profile2.setCreated(new Date());
        
        UserProfile profile3 = new UserProfile("guest");
        profile3.setUser(usr3);
        profile3.setUserGroup(grp2);
        profile3.setCreated(new Date());
        
        userProfileRepository.save(profile1);
        userProfileRepository.save(profile2);
        userProfileRepository.save(profile3);
        
        IS_POPULATED = true;
        
        insertRandomUser(20);
    }
}
