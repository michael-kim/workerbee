package com.nexr.workerbee.web.concurent;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.task.SimpleAsyncTaskExecutor;
import org.springframework.core.task.SyncTaskExecutor;
import org.springframework.core.task.support.TaskExecutorAdapter;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.scheduling.timer.TimerTaskExecutor;

public class SpringExecutorsDemo {
	public static void main(String[] args){
		ClassPathXmlApplicationContext ctx=
				new ClassPathXmlApplicationContext("spring/executor-beans.xml");
		SpringExecutorsDemo demo=ctx.getBean(
				"springExecutorsDemo",SpringExecutorsDemo.class);
	}
	
	@Autowired
	private SimpleAsyncTaskExecutor asyncTaskExecutor;
	
	@Autowired
	private SyncTaskExecutor syncTaskExecutor;
	
	@Autowired
	private TaskExecutorAdapter taskExecutorAdapter;
	
	@Resource(name="timerTaskExecutorWihoutScheduledTimerTasks")
	private TimerTaskExecutor timerTaskExecutorWihoutScheduledTimerTasks;
	
	@Resource(name="threadPoolTaskExecutor")
	private ThreadPoolTaskExecutor threadPoolTaskExecutor;
	
	@Autowired
	private DemonstrationRunnable task;
	
	public void submitJobs(){
		syncTaskExecutor.execute(task);
		taskExecutorAdapter.submit(task);
		asyncTaskExecutor.submit(task);
		timerTaskExecutorWihoutScheduledTimerTasks.submit(task);
		
		for(int i=9; i< 500; i++){
			threadPoolTaskExecutor.submit(task);
		}
	}
}
