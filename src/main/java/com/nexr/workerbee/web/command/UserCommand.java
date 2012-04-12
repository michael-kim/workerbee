package com.nexr.workerbee.web.command;

import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.dto.UserProfile;

public class UserCommand {
    private String username;
    private String password;
    private String confirmPassword;
    private boolean enabled;
    
    private String firstName;
    private String lastName;
    private String email;
    
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getConfirmPassword() {
        return confirmPassword;
    }
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
    public boolean isEnabled() {
        return enabled;
    }
    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    public User genUser(){
        return new User(username,password,enabled);
    }
    
    public UserProfile genUserProfile(){
        return new UserProfile(firstName,lastName,email);
    }
}
