package com.nexr.workerbee.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nexr.workerbee.service.MessageBoardService;
import com.nexr.workerbee.web.model.Message;

@Controller
@RequestMapping("/messageDelete*")
public class MessageDeleteController {
	
	@Autowired
	private MessageBoardService messageBoardService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String messsageDelete(@RequestParam(required=true,value="messageId") 
		Long messageId,Model model){
		
		Message message = messageBoardService.findMessageById(messageId);
		messageBoardService.deleteMessage(message);
		return "redirect:messageList";
		
	}

}
