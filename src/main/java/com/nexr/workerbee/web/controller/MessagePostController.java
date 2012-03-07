package com.nexr.workerbee.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexr.workerbee.web.domain.Message;
import com.nexr.workerbee.web.service.MessageBoardService;

@Controller
@RequestMapping("/messagePost*")
public class MessagePostController {
	
	@Autowired
	private MessageBoardService messageBoardService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String setupFrom(Model model){
		Message message = new Message();
		model.addAttribute("message",message);
		return "messages/messagePost";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String onSubmit(@ModelAttribute("message") Message message,
			BindingResult result){
		if(result.hasErrors()){
			return "messages/messagePost";
		}else{
			messageBoardService.postMessage(message);
		}
		return "redirect:messageList";
	}
}
