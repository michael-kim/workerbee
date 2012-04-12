package com.nexr.workerbee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.MessageDao;
import com.nexr.workerbee.dao.UserProfileDao;
import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.Message;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.MessageService;

@Service("messageService")
public class MessageServiceImpl implements MessageService{
    
    @Resource
    MessageDao messageDao;
    
    @Override
    public List<Message> listMessage() {
        List<Message> messages = messageDao.findAll();
        return messages;
    }

    @Override
    public void postMessage(Message message) {
        messageDao.makePersistent(message);
        messageDao.flush();
    }

    @Override
    public void deleteMessage(Message message) {
        messageDao.makeTransient(message);
        messageDao.flush();
    }

    @Override
    public Message findMessageById(Long messageId) {
        return messageDao.findById(messageId);
    }

    @Override
    public EntityPage<Message> getMessagePage(int pageNum, int pageSize) {
        return messageDao.getPage(pageNum, pageSize);
    }

    @Override
    public void updateMessage(Message message) {
        messageDao.merge(message);
        messageDao.flush();
    }
    
}
