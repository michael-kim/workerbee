package com.nexr.workerbee.web.service;

import java.util.List;

import com.nexr.workerbee.web.domain.Message;

public interface MessageBoardService {
	public List<Message> listMessage();
	public void postMessage(Message message);
	public void deleteMessage(Message message);
	public Message findMessageById(Long messageId);
}
