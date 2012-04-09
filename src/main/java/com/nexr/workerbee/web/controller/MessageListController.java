package com.nexr.workerbee.web.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexr.workerbee.service.MessageBoardService;
import com.nexr.workerbee.web.model.Message;

@Controller
@RequestMapping("/messageList")
public class MessageListController {
    
    @Autowired
    private MessageBoardService messageBoardService;
    
    @RequestMapping(method=RequestMethod.GET)
    public String generateList(Model model){
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        
        model.addAttribute("username",auth.getName());
        List<Message> messages = Collections.emptyList();
        messages = messageBoardService.listMessage();
        model.addAttribute("messages",messages);
        return "tiles.messages.messageList";
    }
}
