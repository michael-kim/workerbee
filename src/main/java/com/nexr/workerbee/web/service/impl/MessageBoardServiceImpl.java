package com.nexr.workerbee.web.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.web.domain.Message;
import com.nexr.workerbee.web.service.MessageBoardService;

@Service("messageBoardService")
public class MessageBoardServiceImpl implements MessageBoardService{

	private Map<Long,Message> messages= new LinkedHashMap<Long,Message>();
	
	@Override
	public List<Message> listMessage() {
		return new ArrayList<Message>(messages.values());
	}

	@Override
	public synchronized void postMessage(Message message) {
		message.setId(System.currentTimeMillis());
		messages.put(message.getId(), message);
	}

	@Override
	public synchronized void deleteMessage(Message message) {
		messages.remove(message.getId());
	}

	@Override
	public Message findMessageById(Long messageId) {
		return messages.get(messageId);
	}
	

}
