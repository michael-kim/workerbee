package com.nexr.workerbee.web.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.nexr.workerbee.web.command.UserCommand;

@Component("userCommandValidator")
public class UserCommandValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return UserCommand.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "username", "username.required", "Username is required");
        ValidationUtils.rejectIfEmpty(errors, "password", "password.required", "Password is required");
        ValidationUtils.rejectIfEmpty(errors, "confirmPassword", "confirmPassword.required", "Confirm Password is required");
        
        UserCommand userCommand = (UserCommand)target;
        if(errors.hasErrors()) return;
        
        if (!userCommand.getPassword().equals(userCommand.getConfirmPassword())){
            errors.rejectValue("confirmPassword", "not.match.password","not same" );
        }
    }
    
}
