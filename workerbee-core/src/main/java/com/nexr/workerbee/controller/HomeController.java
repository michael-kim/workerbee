package com.nexr.workerbee.controller;

import com.nexr.workerbee.domain.User;
import com.nexr.workerbee.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @Resource
    UserRepository userRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "redirect:/test";
    }
    
    @RequestMapping(value = "/empty", method = RequestMethod.GET)
    public String empty() {
        return "layout/simple/body";
    }

    @RequestMapping(value = "/icons", method = RequestMethod.GET)
    public String icons() {
        return "icons";
    }

    @RequestMapping(value = "test", method = RequestMethod.GET)
    public String test(Model model) {
        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);
        return "test";
    }
}
