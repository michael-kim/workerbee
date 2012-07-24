package com.nexr.workerbee.event;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/root-beans.xml"})
public class CashierTest {
    
    @Autowired
    private Cashier cashier;
    
    @Test
    public void eventPublish(){
        cashier.checkout();
    }

}
