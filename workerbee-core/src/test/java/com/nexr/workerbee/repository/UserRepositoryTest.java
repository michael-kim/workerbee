package com.nexr.workerbee.repository;

import com.nexr.workerbee.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:**/beans/beans-for-repository-test.xml"})
public class UserRepositoryTest {

  @Resource
  UserRepository userRepository;

  @Transactional
  @Test
  public void test() {

    User user = new User();
    user.setUsername("minwoo");
    user.setPassword("asdfasdfas");
    userRepository.save(user);

  }
}
