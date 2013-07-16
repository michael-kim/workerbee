package com.nexr.workerbee.controller;

import com.nexr.workerbee.domain.User;
import com.nexr.workerbee.repository.UserRepository;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/users/")
public class UserController {
    
    @Resource
    UserRepository userRepository;

    @Resource
    MessageSource messageSource;
    
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(Model model) {
        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);
        return "users/userlist";
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String add(Model model, Locale locale) {
        return "users/adduser";
    }

}
