package com.nexr.workerbee.controller.validator;

import javax.annotation.Resource;

import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.controller.command.ChangePasswordCommand;


@Component("changePasswordCommandValidator")
public class ChangePasswordCommandValidator implements Validator{
    
    @Resource(name="md5PasswordEncoder")
    PasswordEncoder passwordEncoder;
    
    private String encodedOldPassword;
    
    public void setEncodedOldPassword(String encodedOldPassword) {
        this.encodedOldPassword = encodedOldPassword;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return UserProfile.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "currentPassword", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "newPassword", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "retypePassword", "error.field.required");
        
        ChangePasswordCommand command = (ChangePasswordCommand)target;
        if (!command.getNewPassword().equals(command.getRetypePassword()))
            errors.rejectValue("newPassword", "error.password.not.match"); 
        String encodedCurrentPassword=passwordEncoder.encodePassword(command.getCurrentPassword(), null);
        if (!encodedOldPassword.equals(encodedCurrentPassword))
            errors.rejectValue("currentPassword", "error.password.wrong");
    }
    
}
