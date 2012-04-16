package com.nexr.workerbee.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.LockOptions;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Example;

import com.nexr.workerbee.dao.GenericDao;


public abstract class GenericHibernateDao <Entity, ID extends Serializable> implements GenericDao<Entity,ID>{
    
    private Class<Entity> persistentClass;
    
    @Resource
    private SessionFactory sessionFactory;
    
    public GenericHibernateDao(){
        this.persistentClass = (Class<Entity>)((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory=sessionFactory;
    }
    
    public SessionFactory getSessinFactory(){
        return sessionFactory;
    }
    
    public Class<Entity> getPersistentClass(){
        return persistentClass;
    }
    
    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    
    public EntityPage<Entity> getPage(DetachedCriteria detachedCriteria, int pageNum,int pageSize){
        Criteria criteria =detachedCriteria.getExecutableCriteria(getSession());
        EntityPage<Entity> page = new EntityPage<Entity>(criteria,pageNum,pageSize);
        return page;
    }
    
    public EntityPage<Entity> getPage(int pageNum,int pageSize){
        Criteria crit = getSession().createCriteria(getPersistentClass());
        EntityPage<Entity> page = new EntityPage<Entity>(crit,pageNum,pageSize);
        return page;
    }
    
    public Entity merge(Entity entity){
        return (Entity)getSession().merge(entity);
    }
    
    public Entity findById(ID id){
        return findById(id, false);
    }
    
    @Override
    public Entity findById(ID id, boolean lock) {
        Entity entity;
        if(lock){
            entity = (Entity)getSession().get(getPersistentClass(), id,LockOptions.UPGRADE);
        }else{
            entity = (Entity)getSession().get(getPersistentClass(), id);
        }
        return entity;
    }
    
    @Override
    public List<Entity> findAll() {
        return findByCriteria();
    }
    
    @Override
    public List<Entity> findByExample(Entity exampleInstance, String... excludeProperty) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        Example example = Example.create(exampleInstance);
        for(String exclude:excludeProperty){
            example.excludeProperty(exclude);
        }
        crit.add(example);
        return crit.list();
    }
    
    @Override
    public Entity makePersistent(Entity entity) {
        getSession().saveOrUpdate(entity);
        return entity;
    }
    
    @Override
    public void makeTransient(Entity entity) {
        getSession().delete(entity);
    }
    
    @Override
    public void deleteById(Long id){
        Entity entity = (Entity)getSession().get(getPersistentClass(), id);
        getSession().delete(entity);
    }
    
    @Override
    public void flush() {
        getSession().flush();
    }
    
    @Override
    public void clear() {
        getSession().clear();
    }
    
    @Override
    public List<Entity> findByDetachedCriteria(DetachedCriteria dcrit){
        return dcrit.getExecutableCriteria(getSession()).list();
    }
    
    @Override
    public List<Entity> findByCriteria(Criterion... criterion) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        for(Criterion c : criterion){
            crit.add(c);
        }
        return crit.list();
    }
}
