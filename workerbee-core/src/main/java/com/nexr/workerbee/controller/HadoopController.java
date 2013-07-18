package com.nexr.workerbee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/services/hadoop/")
public class HadoopController {
    @RequestMapping(value = "{page}", method = RequestMethod.GET)
    public String jobtracker(@PathVariable String page) {
        return "hadoop/"+page;
    }
}
