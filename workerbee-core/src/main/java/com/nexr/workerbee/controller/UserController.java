package com.nexr.workerbee.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexr.workerbee.domain.User;
import com.nexr.workerbee.repository.UserRepository;

@Controller
@RequestMapping("/user/")
public class UserController {
    
    @Resource
    UserRepository userRepository;
    
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(Model model) {
        
        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);

        return "userlist";
    }
    
}
