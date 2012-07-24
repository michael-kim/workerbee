package com.nexr.workerbee.web.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.nexr.workerbee.dto.UserProfile;
import com.nexr.workerbee.service.UserProfileService;


@Component("userProfileValidator")
public class UserProfileValidator implements Validator{
    
    private static final String EMAIL_PATTERN = 
            "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@"
            +"[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    
    @Override
    public boolean supports(Class<?> clazz) {
        return UserProfile.class.isAssignableFrom(clazz);
    }
    
    @Resource
    UserProfileService userProfileService;

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "lastName", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "firstName", "error.field.required");
        ValidationUtils.rejectIfEmpty(errors, "email", "error.field.required");

        if(errors.hasErrors()) return;
        UserProfile profile = (UserProfile)target;
        if (profile.getLastName().length()>20) errors.rejectValue("lastName", "error.too.long");
        if (profile.getLastName().length()>20) errors.rejectValue("firstName", "error.too.long");

        Pattern p = Pattern.compile(EMAIL_PATTERN);
        Matcher m = p.matcher(profile.getEmail());
        boolean matchFound = m.matches();
        if (!matchFound){
            errors.rejectValue("email", "error.email.invalid");
        }
        
        if (!userProfileService.isUpdatableEmail(profile.getEmail(),profile.getUser().getUsername())){
            errors.rejectValue("email", "error.email.already.exists");
        }
    }
    
}
