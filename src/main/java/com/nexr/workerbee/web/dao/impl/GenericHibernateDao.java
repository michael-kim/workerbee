package com.nexr.workerbee.web.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.LockOptions;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;

import com.nexr.workerbee.web.dao.GenericDao;


public abstract class GenericHibernateDao <T, ID extends Serializable> implements GenericDao<T,ID>{
    
    private Class<T> persistentClass;
    
    @Resource
    private SessionFactory sessionFactory;
    
    public GenericHibernateDao(){
        this.persistentClass = (Class<T>)((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory=sessionFactory;
    }
    
    public SessionFactory getSessinFactory(){
        return sessionFactory;
    }
    
    public Class<T> getPersistentClass(){
        return persistentClass;
    }
    
    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    
    public EntityPage<T> getPage(int pageNum,int pageSize){
        Criteria crit = getSession().createCriteria(getPersistentClass());
        EntityPage<T> page = new EntityPage<T>(crit,pageNum,pageSize);
        return page;
    }
    
    @Override
    public T findById(ID id, boolean lock) {
        T entity;
        if(lock){
            entity = (T)getSession().load(getPersistentClass(), id,LockOptions.UPGRADE);
        }else{
            entity = (T)getSession().load(getPersistentClass(), id);
        }
        return entity;
    }
    
    @Override
    public List<T> findAll() {
        return findByCriteria();
    }
    
    @Override
    public List<T> findByExample(T exampleInstance, String... excludeProperty) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        Example example = Example.create(exampleInstance);
        for(String exclude:excludeProperty){
            example.excludeProperty(exclude);
        }
        crit.add(example);
        return crit.list();
    }
    
    @Override
    public T makePersistent(T entity) {
        getSession().saveOrUpdate(entity);
        return entity;
    }
    
    @Override
    public void makeTransient(T entity) {
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
    public List<T> findByCriteria(Criterion... criterion) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        for(Criterion c : criterion){
            crit.add(c);
        }
        return crit.list();
    }
}
