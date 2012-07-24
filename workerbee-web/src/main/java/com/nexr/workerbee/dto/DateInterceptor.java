package com.nexr.workerbee.dto;


import java.io.Serializable;
import java.util.Date;
import java.util.Iterator;

import org.hibernate.CallbackException;
import org.hibernate.EntityMode;
import org.hibernate.Interceptor;
import org.hibernate.Transaction;
import org.hibernate.type.Type;

public class DateInterceptor implements Interceptor, Serializable {
    
    public static final Interceptor INSTANCE = new DateInterceptor();
    
    protected DateInterceptor() {}
    
    public boolean onSave(Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types) {
        boolean changed = false;
        for (int i = 0; i < state.length; i++) {
            if ("created".equals(propertyNames[i])) {
                state[i] = new Date();
                changed = true;
            }
            if ("modified".equals(propertyNames[i])) {
                state[i] = new Date();
                changed = true;
            }
        }
        return changed;
    }
    
    public boolean onFlushDirty(Object entity, Serializable id, Object[] currentState, Object[] previousState, String[] propertyNames, Type[] types) {
        boolean changed = false;
        
        for (int i = 0; i < currentState.length; i++) {
            if ("modified".equals(propertyNames[i])) {
                currentState[i] = new Date();
                changed = true;
                break;
            }
        }
        return changed;
    }
    
    public void onDelete(
            Object entity, 
            Serializable id, 
            Object[] state, 
            String[] propertyNames, 
            Type[] types) {}
    
    
    public boolean onLoad(
            Object entity, 
            Serializable id, 
            Object[] state, 
            String[] propertyNames, 
            Type[] types) {
        return false;
    }
    
    public void postFlush(Iterator entities) {}
    public void preFlush(Iterator entities) {}
    
    public Boolean isTransient(Object entity) {
        return null;
    }
    
    public Object instantiate(String entityName, EntityMode entityMode, Serializable id) {
        return null;
    }
    
    public int[] findDirty(Object entity,
            Serializable id,
            Object[] currentState,
            Object[] previousState,
            String[] propertyNames,
            Type[] types) {
        return null;
    }
    
    public String getEntityName(Object object) {
        return null;
    }
    
    public Object getEntity(String entityName, Serializable id) {
        return null;
    }
    
    public void afterTransactionBegin(Transaction tx) {}
    public void afterTransactionCompletion(Transaction tx) {}
    public void beforeTransactionCompletion(Transaction tx) {}
    
    public String onPrepareStatement(String sql) {
        return sql;
    }
    
    public void onCollectionRemove(Object collection, Serializable key) throws CallbackException {}
    
    public void onCollectionRecreate(Object collection, Serializable key) throws CallbackException {}
    
    public void onCollectionUpdate(Object collection, Serializable key) throws CallbackException {}
    
}