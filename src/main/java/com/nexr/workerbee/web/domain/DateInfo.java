package com.nexr.workerbee.web.domain;

import java.util.Date;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Component;

public class DateInfo {
	
	
	private Date date;
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
}
