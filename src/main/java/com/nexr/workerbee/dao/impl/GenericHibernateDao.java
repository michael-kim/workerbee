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
import org.hibernate.criterion.Example;

import com.nexr.workerbee.dao.GenericDao;


public abstract class GenericHibernateDao <Enitity, ID extends Serializable> implements GenericDao<Enitity,ID>{
    
    private Class<Enitity> persistentClass;
    
    @Resource
    private SessionFactory sessionFactory;
    
    public GenericHibernateDao(){
        this.persistentClass = (Class<Enitity>)((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory=sessionFactory;
    }
    
    public SessionFactory getSessinFactory(){
        return sessionFactory;
    }
    
    public Class<Enitity> getPersistentClass(){
        return persistentClass;
    }
    
    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    
    public EntityPage<Enitity> getPage(int pageNum,int pageSize){
        Criteria crit = getSession().createCriteria(getPersistentClass());
        EntityPage<Enitity> page = new EntityPage<Enitity>(crit,pageNum,pageSize);
        return page;
    }
    
    public Enitity merge(Enitity entity){
        return (Enitity)getSession().merge(entity);
    }
    
    public Enitity findById(ID id){
        return findById(id, false);
    }
    
    @Override
    public Enitity findById(ID id, boolean lock) {
        Enitity entity;
        if(lock){
            entity = (Enitity)getSession().get(getPersistentClass(), id,LockOptions.UPGRADE);
        }else{
            entity = (Enitity)getSession().get(getPersistentClass(), id);
        }
        return entity;
    }
    
    @Override
    public List<Enitity> findAll() {
        return findByCriteria();
    }
    
    @Override
    public List<Enitity> findByExample(Enitity exampleInstance, String... excludeProperty) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        Example example = Example.create(exampleInstance);
        for(String exclude:excludeProperty){
            example.excludeProperty(exclude);
        }
        crit.add(example);
        return crit.list();
    }
    
    @Override
    public Enitity makePersistent(Enitity entity) {
        getSession().saveOrUpdate(entity);
        return entity;
    }
    
    @Override
    public void makeTransient(Enitity entity) {
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
    public List<Enitity> findByCriteria(Criterion... criterion) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        for(Criterion c : criterion){
            crit.add(c);
        }
        return crit.list();
    }
}
