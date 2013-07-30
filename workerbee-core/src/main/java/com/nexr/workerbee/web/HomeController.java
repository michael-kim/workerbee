package com.nexr.workerbee.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {
    
    @RequestMapping(value = "view/{page}", method = RequestMethod.GET)
    public String view(@PathVariable String page) {
        return "mock/" + page;
    }
    
}
