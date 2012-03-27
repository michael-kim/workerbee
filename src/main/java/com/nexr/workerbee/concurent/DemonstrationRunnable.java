package com.nexr.workerbee.concurent;

import java.util.Date;

import org.apache.commons.lang.exception.ExceptionUtils;

public class DemonstrationRunnable implements Runnable{

	@Override
	public void run() {
		try{
			Thread.sleep(10000);
		}catch(InterruptedException e){
			System.out.println(ExceptionUtils.getFullStackTrace(e));
		}
		System.out.println(Thread.currentThread().getName());
		System.out.printf("Hello at %s \n",new Date());
	}
}
