package com.nexr.workerbee.dto;

public enum Language {
    en("English (US)"),ko("한국어");
    
    private String displayText;
    private Language(String displayText){
        this.displayText=displayText;
    }
    
    public String getValue(){
        return name();
    }
    
    public void  setValue(String value) {}
    
    public String getDisplayText(){
        return this.displayText;
    }
}
