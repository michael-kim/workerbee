package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.TaskCommentDao;
import com.nexr.workerbee.dto.TaskComment;

@Repository("taskCommentDao")
public class TaskCommentDaoImpl extends GenericHibernateDao<TaskComment, Long> implements TaskCommentDao{
    
}
