package com.nexr.workerbee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "home";
    }
    
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/empty", method = RequestMethod.GET)
    public String empty() {
        return "layout/simple/body";
    }

    @RequestMapping(value = "/icons", method = RequestMethod.GET)
    public String icons() {
        return "icons";
    }
}
