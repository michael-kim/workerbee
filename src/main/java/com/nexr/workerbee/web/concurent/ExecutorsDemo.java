package com.nexr.workerbee.web.concurent;

import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ExecutorsDemo {
	public static void main(String[] args) throws Throwable{
		
		Runnable task = new DemonstrationRunnable();
		
		ExecutorService cachedThreadPoolExecutorService = 
					Executors.newCachedThreadPool();
		
		if (cachedThreadPoolExecutorService.submit(task).get()==null){
			System.out.printf("The cachedThreadPoolExecutorService"
					+"hass succeeded at %s \n",new Date());
		}
		
		ExecutorService fixedThreadPool =Executors.newFixedThreadPool(100);
		Future future = fixedThreadPool.submit(task);
		if(future.get()==null){
			System.out.printf("The fixedTreadPool has succeeded at %s \n",new Date());
		}
		
		ExecutorService singleThreadExecutorService = Executors.newSingleThreadExecutor();
		
		if (singleThreadExecutorService.submit(task).get()==null)
			System.out.printf("the single ThredExecutorService has succeeded at %s \n",new Date());
		
		ExecutorService es = Executors.newCachedThreadPool();
		if(es.submit(task,Boolean.TRUE).get().equals(Boolean.TRUE))
			System.out.println("Job has finished!");
		
		ScheduledExecutorService scheduledThreadExecutorService=
				Executors.newScheduledThreadPool(10);
		
		if(scheduledThreadExecutorService.schedule(task, 30, TimeUnit.SECONDS).get()==null)
			System.out.printf("The scheduledThreadExecutorService has succeeded at %s \n", new Date());
		
		scheduledThreadExecutorService.scheduleAtFixedRate(task, 0,5,TimeUnit.SECONDS);
	}

}
