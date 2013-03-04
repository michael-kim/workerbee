package com.nexr.workerbee.repository.impl;


import java.util.Date;

import org.junit.Test;

public class BasicTest {

    @Test
    public void start(){
        
        Date date = new Date();
        if (date.getClass().equals(Date.class))
            System.out.println("hello!");
        
    }
}
