package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.TaskCommentDao;
import com.nexr.workerbee.dto.TaskComment;

@Repository("taskCommentDao")
public class TaskCommentDaoImpl extends GenericHibernateDao<TaskComment, Long> implements TaskCommentDao{
    
}
