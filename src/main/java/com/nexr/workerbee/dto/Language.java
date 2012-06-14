package com.nexr.workerbee.dto;

public enum Language {
    ko("한국어"),en("English(US)");
    
    private String display;
    private Language(String display){
        this.display=display;
    }
    
    public String toString(){
        return this.display;
    }
}
