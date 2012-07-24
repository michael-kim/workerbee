package com.nexr.workerbee.web.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.UserGroup;

@Component
public class UserGroupValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return UserGroup.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        
    }
    
}
