package com.nexr.workerbee.repository.impl;

import org.springframework.stereotype.Repository;

import com.nexr.workerbee.repository.MessageDao;
import com.nexr.workerbee.dto.Message;

@Repository("messageDao")
public class MessageDaoImpl extends GenericHibernateDao<Message, Long> implements MessageDao{
    
}
