package com.nexr.workerbee.repository;

import com.nexr.workerbee.domain.User;

public interface UserRepository extends GenericRepository<User, Long> {

  User findByUsername(String username);
}
