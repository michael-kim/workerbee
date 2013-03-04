package com.nexr.workerbee.repository;

import java.io.Serializable;

public interface UserRepository<User, Long extends Serializable> extends GenericRepository<User, Long> {
}
