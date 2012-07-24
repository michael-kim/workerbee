package com.nexr.workerbee.web.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.TaskComment;

@Component
public class TaskCommentValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return TaskComment.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors,"comment","error.field.required");
        TaskComment taskComment = (TaskComment)target;
        
        if (taskComment.getComment().length()<=5)
            errors.rejectValue("comment","error.too.short");
    }
}
