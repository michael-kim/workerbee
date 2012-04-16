package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.HiveTaskDao;
import com.nexr.workerbee.dto.HiveTask;

@Repository("hiveTaskDao")
public class HiveTaskDaoImpl extends GenericHibernateDao<HiveTask, Long> implements HiveTaskDao{
    
}
