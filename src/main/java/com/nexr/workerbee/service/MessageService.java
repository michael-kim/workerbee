package com.nexr.workerbee.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.Message;


public interface MessageService {
    @Transactional
    public List<Message> listMessage();
    
    @Transactional
    public void postMessage(Message message);
    
    @Transactional
    public void deleteMessage(Message message);
    
    @Transactional
    public Message findMessageById(Long messageId);
}
