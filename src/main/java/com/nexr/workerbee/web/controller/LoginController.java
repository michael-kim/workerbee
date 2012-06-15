package com.nexr.workerbee.web.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dto.Language;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserService;
import com.nexr.workerbee.web.command.UserCommand;
import com.nexr.workerbee.web.validator.UserCommandValidator;

@Controller
public class LoginController {
    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    
    @Resource
    UserService userService;
    
    @Resource
    UserCommandValidator userCommandValidator;
    
    @RequestMapping(value="/login",method=RequestMethod.GET)
    public String loginForm(){
        return "tiles.login";
    }
    
    @RequestMapping(value="/forgotLoginDetails",method=RequestMethod.GET)
    public String forgotLoginDetails(Model model){
        UserCommand userCommand = new UserCommand();
        model.addAttribute("userCommand",userCommand);
        return "tiles.login.forgotLoginDetails";
    }
    
    @RequestMapping(value="/signup",method=RequestMethod.GET)
    public String signup(Model model){
        UserCommand userCommand = new UserCommand();
        model.addAttribute("userCommand",userCommand);
        model.addAttribute("languages", Language.values());
        return "tiles.login.signup";
    }
    
    @RequestMapping(value="/signup",method=RequestMethod.POST)
    public String submitSignup(@ModelAttribute("userCommand") UserCommand userCommand,
            BindingResult result, SessionStatus status, Model model){
        
        // validate
        userCommandValidator.validate(userCommand, result);
        
        if (result.hasErrors()){
            model.addAttribute("languages", Language.values());
            model.addAttribute("userCommand", userCommand);
            return "tiles.login.signup";
        }else{
            status.setComplete();
        }
        
        User user = userCommand.genUser();
        UserProfile userProfile = userCommand.genUserProfile();
        user.setUserProfile(userProfile);
        userService.addUser(user);
        
        return "tiles.login.signup.complete";
    }
}
