package com.nexr.workerbee.dao.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.dao.MessageDao;
import com.nexr.workerbee.dto.Message;

@Repository("messageDao")
public class MessageDaoImpl extends GenericHibernateDao<Message, Long> implements MessageDao{
    
}
