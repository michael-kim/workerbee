package com.nexr.workerbee.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;

import com.nexr.workerbee.dao.impl.EntityPage;

public interface GenericDao<Entity,ID> {
    
    public Entity findById(ID id);
    
    public Entity findById(ID id, boolean lock);
    
    public List<Entity> findAll();
    
    public List<Entity> findByExample(Entity exampleInstance, String ... excludeProperty);
    
    public Entity makePersistent(Entity entity);
    
    public void makeTransient(Entity entity);
    
    public Entity merge(Entity entity);
    
    public void flush();
    
    public void clear();
    
    List<Entity> findByCriteria(Criterion... criterion);
    
    public EntityPage<Entity> getPage(int pageNum,int pageSize);
    
    public EntityPage<Entity> getPage(Criteria criteria,int pageNum,int pageSize);
    
}
