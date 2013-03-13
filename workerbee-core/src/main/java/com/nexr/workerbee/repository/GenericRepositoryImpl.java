package com.nexr.workerbee.repository;

import org.springframework.data.jpa.repository.support.SimpleJpaRepository;

import javax.persistence.EntityManager;
import java.io.Serializable;

public class GenericRepositoryImpl<T, ID extends Serializable> extends SimpleJpaRepository<T, ID> implements GenericRepository<T, ID> {

  private EntityManager entityManager;

  public GenericRepositoryImpl(Class<T> domainClass, EntityManager entityManager) {
    super(domainClass, entityManager);
    this.entityManager = entityManager;
  }

  @Override
  public void sharedCustomMethod(ID id) {
    // nothing
  }
}
