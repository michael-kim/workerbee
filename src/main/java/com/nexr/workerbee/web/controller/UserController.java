package com.nexr.workerbee.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.UserService;

@Controller
@SessionAttributes("user")
@RequestMapping("/users")
public class UserController {
    
    @Resource
    UserService userService;

    @RequestMapping(value="list",method=RequestMethod.GET)
    public String uesrList(Model model){
        List<User> users = userService.getAllUsers();
        model.addAttribute("users",users);
        return "tiles.users.list";
    }
    
    
    @RequestMapping(value="form",method=RequestMethod.GET)
    public String formUser(Model model){
        User user = new User();
        model.addAttribute(user);
        return "tiles.users.form";
    }
    
    @RequestMapping(value="submit",method=RequestMethod.POST)
    public String submitUser(@ModelAttribute("user") User user,
            BindingResult result, SessionStatus status, Model model){
        return "redirect:/users/list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String deleteUser(@RequestParam("userId") Long userId){
        userService.deleteUser(userId);
        return "redirect:/users/list";
    }
    
}
