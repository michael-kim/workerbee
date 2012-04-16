package com.nexr.workerbee.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserService;
import com.nexr.workerbee.web.command.UserCommand;
import com.nexr.workerbee.web.validator.UserCommandValidator;

@Controller
@SessionAttributes(value={"userCommand"})
@RequestMapping("/users")
public class UserController {
    
    @Resource
    UserService userService;
    
    @Resource
    UserCommandValidator userCommandValidator;

    @RequestMapping(value="list",method=RequestMethod.GET)
    public String uesrList(@RequestParam(value="pageNum",required=false,defaultValue="1")int pageNum, Model model){
        EntityPage<User> pager = userService.getUserPage(pageNum, 2);
        List<User> users = pager.getList();
        model.addAttribute("users",users);
        model.addAttribute("pager", pager);
        return "tiles.users.list";
    }
    
    
    @RequestMapping(value="add",method=RequestMethod.GET)
    public String addUser(Model model){
        UserCommand userCommand = new UserCommand();
        model.addAttribute("userCommand",userCommand);
        return "tiles.users.add";
    }
    
    @RequestMapping(value="add",method=RequestMethod.POST)
    public String submitUser(@ModelAttribute("userCommand") UserCommand userCommand,
            BindingResult result, SessionStatus status, Model model){
        
        // validate
        userCommandValidator.validate(userCommand, result);
        
        if (result.hasErrors()){
            model.addAttribute("userCommand", userCommand);
            return "tiles.users.add";
        }else{
            status.setComplete();
        }
        
        User user = userCommand.genUser();
        UserProfile userProfile = userCommand.genUserProfile();
        user.setUserProfile(userProfile);
        userService.createUser(user);
        
        return "redirect:/users/list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String deleteUser(@RequestParam("userId") Long userId,
            HttpServletRequest request){
        userService.deleteUser(userId);
        return "redirect:"+request.getHeader("Referer");
    }
    
    @RequestMapping(value="enable",method=RequestMethod.GET)
    public String enableUser(@RequestParam("userId") Long userId,
            HttpServletRequest request){
        userService.enableUser(userId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
    @RequestMapping(value="disable",method=RequestMethod.GET)
    public String disableUser(@RequestParam("userId") Long userId,
            HttpServletRequest request){
        userService.disableUser(userId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
}
