package com.nexr.workerbee.web.controller;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dto.Language;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserProfileService;
import com.nexr.workerbee.service.UserService;
import com.nexr.workerbee.web.command.ChangePasswordCommand;
import com.nexr.workerbee.web.validator.ChangePasswordCommandValidator;
import com.nexr.workerbee.web.validator.UserProfileValidator;

@Controller
@SessionAttributes(value={"userProfile"})
public class SettingsController {
    
    @Resource
    UserService userService;
    
    @Resource
    UserProfileService userProfileService;
    
    @Resource
    UserProfileValidator userProfileValidator;
    
    @Resource
    ChangePasswordCommandValidator changePasswordCommandValidator;
    
    @Resource(name="md5PasswordEncoder")
    PasswordEncoder passwordEncoder;
    
    @RequestMapping(value={"/settings/general/{tab}"},method=RequestMethod.GET)
    public String account(Model model,@PathVariable("tab")String tab){
        if (!tab.matches("account|name|password|email|language|phone")) return "redirect:account"; 
        model.addAttribute("tab", tab);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findByUsername(auth.getName());
        
        if (tab.equals("password"))
            model.addAttribute("changePasswordCommand", new ChangePasswordCommand());
        
        model.addAttribute("languages", Language.values());
        model.addAttribute("userProfile", user.getUserProfile());
        return "tiles.settings.general";
    }
    
    @RequestMapping(value={"/settings/general/name"},method=RequestMethod.POST)
    public String editName(
            @ModelAttribute("userProfile")UserProfile userProfile,
            BindingResult result, SessionStatus status,Model model){
        // validation
        userProfileValidator.validate(userProfile, result);
        
        if (result.hasErrors()){
            model.addAttribute("tab","name");
            model.addAttribute("userProfile", userProfile);
            return "tiles.settings.general";
        }else{
            status.setComplete();
        }
        
        // update name
        userProfileService.upateUserProfile(userProfile);
        return "redirect:account";
    }
    
    @RequestMapping(value={"/settings/general/phone"},method=RequestMethod.POST)
    public String editPhone(
            @ModelAttribute("userProfile")UserProfile userProfile,
            BindingResult result, SessionStatus status,Model model){
        // validation
        userProfileValidator.validate(userProfile, result);
        
        if (result.hasErrors()){
            model.addAttribute("tab","name");
            model.addAttribute("userProfile", userProfile);
            return "tiles.settings.general";
        }else{
            status.setComplete();
        }
        
        // update name
        userProfileService.upateUserProfile(userProfile);
        return "redirect:account";
    }
    
    @RequestMapping(value={"/settings/general/email"},method=RequestMethod.POST)
    public String editEmail(
            @ModelAttribute("userProfile")UserProfile userProfile,
            BindingResult result, SessionStatus status,Model model){
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findByUsername(auth.getName());
        
        // validation
        userProfileValidator.validate(userProfile, result);
        ValidationUtils.rejectIfEmpty(result, "verifyPassword", "error.password.required");
        if (!result.hasFieldErrors("verifyPassword")) {
            String encodedPassword = passwordEncoder.encodePassword(userProfile.getVerifyPassword(), null);
            if (!encodedPassword.equals(user.getPassword()))
                result.rejectValue("verifyPassword", "error.password.wrong");
        }
        
        if (result.hasErrors()){
            model.addAttribute("tab","email");
            model.addAttribute("userProfile", userProfile);
            return "tiles.settings.general";
        }else{
            status.setComplete();
        }
        
        // update name
        userProfileService.upateUserProfile(userProfile);
        return "redirect:account";
    }
    
    @RequestMapping(value={"/settings/general/password"},method=RequestMethod.POST)
    public String editPassword(
            @ModelAttribute("changePasswordCommand")ChangePasswordCommand command,
            BindingResult result, Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findByUsername(auth.getName());
        
        // validation
        changePasswordCommandValidator.setEncodedOldPassword(user.getPassword());
        changePasswordCommandValidator.validate(command, result);
        
        if (result.hasErrors()){
            model.addAttribute("tab","password");
            model.addAttribute("changePasswordCommand", command);
            model.addAttribute("userProfile", user.getUserProfile());
            return "tiles.settings.general";
        }
        
        // save new password
        user.setPassword(passwordEncoder.encodePassword(command.getNewPassword(), null));
        user.setPasswordLastModified(new Date());
        userService.upateUser(user);
        return "redirect:account";
    }
    
    @RequestMapping(value={"/settings/general/language"},method=RequestMethod.POST)
    public String editLanguage(Model model, @ModelAttribute("userProfile") UserProfile userProfile){
        
        userProfileService.upateUserProfile(userProfile);
        return "redirect:account";
    }
    
    @RequestMapping(value={"/settings/profilePicture"},method=RequestMethod.GET)
    public String profilePicture(){
        return "tiles.settings.profile.picture";
    }

    @RequestMapping(value={"/settings/basicInformation"},method=RequestMethod.GET)
    public String basicInformation(){
        return "tiles.settings.basic.information";
    }
    
}
