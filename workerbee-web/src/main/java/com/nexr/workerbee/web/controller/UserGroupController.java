package com.nexr.workerbee.controller.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.nexr.workerbee.dto.UserGroup;
import com.nexr.workerbee.service.UserGroupService;
import com.nexr.workerbee.controller.validator.UserGroupValidator;

@Controller
@SessionAttributes("userGroup")
@RequestMapping("/usergroups")
public class UserGroupController {
    private static final Logger logger = LoggerFactory.getLogger(UserGroupController.class);
    
    @Resource
    UserGroupService userGroupService;
    
    @Resource
    UserGroupValidator userGroupValidator;
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String groupList(@RequestParam(value="pageNum",required=false,defaultValue="1")int pageNum,
            Model model){
        final int PAGE_SIZE=2;
        EntityPage<UserGroup> pager = userGroupService.getUserGroupPage(pageNum, PAGE_SIZE);
        List<UserGroup> userGroups = pager.getList();
        model.addAttribute("userGroups",userGroups);
        model.addAttribute("pager", pager);
        return "tiles.usergroups.list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String deleteUserGroup(@RequestParam("userGroupId") Long userGroupId, Model model,
            HttpServletRequest request){
        userGroupService.deleteUserGroup(userGroupId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
    @RequestMapping(value="add",method=RequestMethod.GET)
    public String addUserGroup(Model model){
        UserGroup userGroup = new UserGroup();
        model.addAttribute("userGroup", userGroup);
        return "tiles.usergroups.add";
    }
    
    @RequestMapping(value="add",method=RequestMethod.POST)
    public String submitUserGroup(@ModelAttribute("userGroup")UserGroup userGroup,
            BindingResult result, SessionStatus status,Model model){
        
        userGroupValidator.validate(userGroup, result);
        
        if (result.hasErrors()){
            model.addAttribute("userGroup",userGroup);
            return "tiles.usergroups.add";
        }else{
            status.setComplete();
        }
        
        userGroupService.addUserGroup(userGroup);
        return "redirect:list";
    }
    
    
    @RequestMapping(value="edit",method=RequestMethod.GET)
    public String editUserGroup(@RequestParam("userGroupId") Long userGroupId, Model model){
        UserGroup userGroup = userGroupService.getUserGroup(userGroupId);
        model.addAttribute("userGroup",userGroup);
        return "tiles.usergroups.edit";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.POST)
    public String updateUserGroup(@ModelAttribute("userGroup")UserGroup userGroup,
            BindingResult result, SessionStatus status,Model model){
        
        userGroupValidator.validate(userGroup, result);
        
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
