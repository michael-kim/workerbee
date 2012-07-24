package com.nexr.workerbee.web.validator;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.UserService;
import com.nexr.workerbee.web.command.UserCommand;

@Component("userCommandValidator")
public class UserCommandValidator implements Validator{

    @Resource
    UserService userService;
    
    @Override
    public boolean supports(Class<?> clazz) {
        return UserCommand.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "username", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "password", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "confirmPassword", "error.field.required");
        
        ValidationUtils.rejectIfEmpty(errors, "lastName", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "firstName", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "email", "error.field.required");

        
        UserCommand userCommand = (UserCommand)target;
        User user = userService.findByUsername(userCommand.getUsername());
        if (user!=null) errors.rejectValue("username","error.username.already.exists");        
        
        if(errors.hasErrors()) return;
        if (!userCommand.getPassword().equals(userCommand.getConfirmPassword())){
            errors.rejectValue("confirmPassword", "error.password.not.match");
        }
    }
    
}
