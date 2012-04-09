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

import com.nexr.workerbee.dto.UserGroup;
import com.nexr.workerbee.service.UserGroupService;

@Controller
@SessionAttributes("userGroup")
@RequestMapping("/userGroups")
public class UserGroupController {
    
    @Resource
    UserGroupService userGroupService;
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String groupList(Model model){
        List<UserGroup> userGroups = userGroupService.getAllUserGroups();
        model.addAttribute("userGroups",userGroups);
        return "tiles.usergroups.list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String groupList(@RequestParam("userGroupId") Long userGroupId, Model model){
        userGroupService.deleteUserGroup(userGroupId);
        return "redirect:list";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.GET)
    public String editUserGroup(@RequestParam("userGroupId") Long userGroupId, Model model){
        UserGroup userGroup = userGroupService.getUserGroup(userGroupId);
        model.addAttribute("userGroup",userGroup);
        return "tiles.usergroups.edit";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.POST)
    public String submitUserGroup(@ModelAttribute("userGroup")UserGroup userGroup,
            BindingResult result, SessionStatus status,Model model){
        
        // TO-DO : validate user group
        result.rejectValue("groupName", "exception.usergroups.error", "error1234");
        
        if (result.hasErrors()){
            model.addAttribute("userGroup",userGroup);
            return "tiles.usergroups.edit";
        }else{
            status.setComplete();
        }
        
        userGroupService.updateUserGroup(userGroup);
        return "redirect:list";
    }

    
}
