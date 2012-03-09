package com.nexr.workerbee.web.event;

import java.util.Date;

import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;

public class Cashier implements ApplicationEventPublisherAware{

	private ApplicationEventPublisher applicationEventPublisher;
	
	@Override
	public void setApplicationEventPublisher(
			ApplicationEventPublisher applicationEventPublisher) {
		this.applicationEventPublisher=applicationEventPublisher;
	}
	
	
	public void checkout(){
		CheckoutEvent event = new CheckoutEvent(this, (double)100.11, new Date());
		applicationEventPublisher.publishEvent(event);
	}

	

}
