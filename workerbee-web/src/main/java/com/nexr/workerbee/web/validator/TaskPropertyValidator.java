package com.nexr.workerbee.controller.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.TaskProperty;

@Component
public class TaskPropertyValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return TaskProperty.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

        TaskProperty property = (TaskProperty)target;
    }
    
}
