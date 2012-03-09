package com.nexr.workerbee.web.event;

import java.util.Date;

import org.springframework.context.ApplicationListener;

public class CheckoutListener implements ApplicationListener<CheckoutEvent>{

	@Override
	public void onApplicationEvent(CheckoutEvent event) {
		double amount = event.getAmount();
		Date time = event.getTime();
		
		System.out.println("Checkout event ["+amount+", "+time+"]");
	}
}
