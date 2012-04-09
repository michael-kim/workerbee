package com.nexr.workerbee.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexr.workerbee.exception.MessageException;

@Controller
public class ExceptionController {
    
    
    @RequestMapping(value="/messageException",method=RequestMethod.GET)
    public String messageException() {
        
        if (true) throw new MessageException("exception.message","test!");
        return "";
    }
    
}
