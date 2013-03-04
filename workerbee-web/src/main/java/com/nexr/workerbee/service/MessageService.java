package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.repository.impl.EntityPage;
import com.nexr.workerbee.dto.Message;


public interface MessageService {
    @Transactional
    public List<Message> findAll();
    
    @Transactional
    public EntityPage<Message> getMessagePage(int pageNum, int pageSize);
    
    @Transactional
    public void updateMessage(Message message);
    
    @Transactional
    public void addMessage(Message message);
    
    @Transactional
    public void deleteMessage(Message message);
    
    @Transactional
    public Message findById(Long messageId);
}
