package com.nexr.workerbee.web.dao;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.nexr.workerbee.web.dao.impl.EntityPage;

public interface GenericDao<T,ID> {
	
	public T findById(ID id, boolean lock);
	
	public List<T> findAll();
	
	public List<T> findByExample(T exampleInstance, String ... excludeProperty);
	
	public T makePersistent(T entity);
	
	public void makeTransient(T entity);
	
	public void flush();
	
	public void clear();
	
	List<T> findByCriteria(Criterion... criterion);
	
	public EntityPage<T> getPage(int pageNum,int pageSize);

}
