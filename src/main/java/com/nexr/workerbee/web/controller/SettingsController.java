package com.nexr.workerbee.web.controller;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.UserService;

@Controller
public class SettingsController {
    
    @Resource
    UserService userService;
    
    @RequestMapping(value="/settings")
    public String account(Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findUserByUsername(auth.getName());
        model.addAttribute("user", user);
        model.addAttribute("userProfile", user.getUserProfile());
        return "tiles.settings.account";
    }
    
    @RequestMapping(value="/settings/name")
    public String editName(Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findUserByUsername(auth.getName());
        model.addAttribute("user", user);
        model.addAttribute("userProfile", user.getUserProfile());
        return "tiles.settings.edit.name";
    }
}
