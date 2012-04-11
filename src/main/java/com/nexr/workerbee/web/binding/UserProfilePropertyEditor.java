package com.nexr.workerbee.web.binding;

import java.beans.PropertyEditorSupport;

import com.nexr.workerbee.dto.UserProfile;

public class UserProfilePropertyEditor extends PropertyEditorSupport {
    
    public String getAsText(){
        UserProfile userProfile = (UserProfile)this.getValue();
        if (userProfile==null) return "";
        return String.valueOf(userProfile.getId());
    }
    public void setAsText(String text) throws IllegalArgumentException{
        UserProfile userProfile = new UserProfile();
        userProfile.setId(Long.parseLong(text.trim()));
        this.setValue(userProfile);
    }
    
}
