package com.nexr.workerbee.web.binding;

import java.beans.PropertyEditorSupport;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

import com.nexr.workerbee.dto.Language;
import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.dto.UserProfile;

public class WorkerbeeWebBindingInitializer implements WebBindingInitializer {
	private static final Logger logger = LoggerFactory.getLogger(WorkerbeeWebBindingInitializer.class);
	
    public void initBinder(WebDataBinder binder, WebRequest request) {
    	logger.warn("Init!! WebBindingInitializer!!");
    	
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
        binder.registerCustomEditor(UserProfile.class, new UserProfilePropertyEditor());
        binder.registerCustomEditor(Task.class, new TaskPropertyEditor());
        binder.registerCustomEditor(Language.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String value) throws IllegalArgumentException {
                if(StringUtils.isBlank(value))
                    return;
                
                setValue(Language.valueOf(value));
            }

            @Override
            public String getAsText() {
                if(getValue() == null)
                    return "";
                return ((Language) getValue()).name();
            }
        });
    }
}