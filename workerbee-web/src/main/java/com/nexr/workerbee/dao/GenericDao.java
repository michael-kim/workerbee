package com.nexr.workerbee.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;

import com.nexr.workerbee.repository.impl.EntityPage;

public interface GenericDao<Entity,ID> {
    
    public Session getSession();
    
    public Entity findById(ID id);
    
    public Entity findById(ID id, boolean lock);
    
    public List<Entity> findAll();
    
    public List<Entity> findByExample(Entity exampleInstance, String ... excludeProperty);
    
    public Entity makePersistent(Entity entity);
    
    public void makeTransient(Entity entity);
    
    public void deleteById(Long id);
    
    public Entity merge(Entity entity);
    
    public void flush();
    
    public void clear();
    
    List<Entity> findByDetachedCriteria(DetachedCriteria dcrit);
    
    List<Entity> findByCriteria(Criterion... criterion);
    
    public EntityPage<Entity> getPage(int pageNum,int pageSize);
    
    public EntityPage<Entity> getPage(DetachedCriteria detachedCriteria, int pageNum,int pageSize);
    
}
