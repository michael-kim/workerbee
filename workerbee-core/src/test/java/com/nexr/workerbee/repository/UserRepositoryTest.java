package com.nexr.workerbee.repository;

import com.nexr.workerbee.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/beans/common-context.xml","/beans/db-context.xml"})
public class UserRepositoryTest {

  UserRepository userRepository;

  @Test
  public void test() {
    User user = new User();
    user.setUsername("minwoo");
    user.setPassword("asdfasdfas");
    userRepository.save(user);

  }
}
