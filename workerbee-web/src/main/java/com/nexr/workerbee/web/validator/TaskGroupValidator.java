package com.nexr.workerbee.controller.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.TaskGroup;

@Component
public class TaskGroupValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return TaskGroup.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        
        TaskGroup taskGroup = (TaskGroup)target;
        
    }
    
}
