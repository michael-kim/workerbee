package com.nexr.workerbee.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
    
    @Resource
    UserService userService;

    @RequestMapping(value="list",method=RequestMethod.GET)
    public String uesrList(Model model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("users",users);
        return "userList";
    }
}
