package com.nexr.workerbee.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.Message;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.MessageService;
import com.nexr.workerbee.service.UserService;

@Controller
@RequestMapping("/messages")
@SessionAttributes("message")
public class MessageController {
    
    @Resource
    private MessageService messageService;
    
    @Resource
    private UserService userService;
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String messsageDelete(@RequestParam(required=true,value="messageId")Long messageId,Model model){
        Message message = messageService.findMessageById(messageId);
        messageService.deleteMessage(message);
        return "redirect:list";
    }
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String generateList(
            @RequestParam(value="pageNum",required=false,defaultValue="1")int pageNum,
            Model model){
        final int PAGE_SIZE=3;
        EntityPage<Message> pager = messageService.getMessagePage(pageNum, PAGE_SIZE);
        List<Message> messages = pager.getList();
        model.addAttribute("messages",messages);
        model.addAttribute("pager", pager);
        return "tiles.messages.messageList";
    }
    
    @RequestMapping(value="post", method=RequestMethod.GET)
    public String setupFrom(Model model){
        Message message = new Message();
        model.addAttribute("message",message);
        return "tiles.messages.messagePost";
    }
    
    @RequestMapping(value="post", method=RequestMethod.POST)
    public String onSubmit(@ModelAttribute("message") Message message,
            BindingResult result,SessionStatus status, Model model){
        if(result.hasErrors()){
            model.addAttribute("message", message);
            return "tiles.messages.messagePost";
        }else{
            status.setComplete();
        }
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.getUser(auth.getName());
        message.setAuthor(user.getUserProfile());
        messageService.postMessage(message);
        return "redirect:list";
    }
    
    @RequestMapping(value="edit", method=RequestMethod.GET)
    public String addMessage(
        @RequestParam(required=true,value="messageId")Long messageId,
        Model model){
        Message message = messageService.findMessageById(messageId);
        model.addAttribute("message",message);
        return "tiles.messages.edit";
    }
    
    @RequestMapping(value="edit", method=RequestMethod.POST)
    public String updateMessage(@ModelAttribute("message") Message message,
            BindingResult result,SessionStatus status, Model model){
        if(result.hasErrors()){
            model.addAttribute("message", message);
            return "tiles.messages.edit";
        }else{
            status.setComplete();
        }
        messageService.updateMessage(message);
        return "redirect:list";
    }
    
    
}
