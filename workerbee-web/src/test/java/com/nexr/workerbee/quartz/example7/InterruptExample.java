package com.nexr.workerbee.quartz.example7;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;
import static org.quartz.DateBuilder.*;

import java.util.Date;

import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.SchedulerMetaData;
import org.quartz.SimpleTrigger;
import org.quartz.impl.StdSchedulerFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Demonstrates the behavior of <code>StatefulJob</code>s, as well as how
 * misfire instructions affect the firings of triggers of <code>StatefulJob</code>
 * s - when the jobs take longer to execute that the frequency of the trigger's
 * repitition.
 * 
 * <p>
 * While the example is running, you should note that there are two triggers
 * with identical schedules, firing identical jobs. The triggers "want" to fire
 * every 3 seconds, but the jobs take 10 seconds to execute. Therefore, by the
 * time the jobs complete their execution, the triggers have already "misfired"
 * (unless the scheduler's "misfire threshold" has been set to more than 7
 * seconds). You should see that one of the jobs has its misfire instruction
 * set to <code>SimpleTrigger.MISFIRE_INSTRUCTION_RESCHEDULE_NOW_WITH_EXISTING_REPEAT_COUNT</code>-
 * which causes it to fire immediately, when the misfire is detected. The other
 * trigger uses the default "smart policy" misfire instruction, which causes
 * the trigger to advance to its next fire time (skipping those that it has
 * missed) - so that it does not refire immediately, but rather at the next
 * scheduled time.
 * </p>
 * 
 * @author <a href="mailto:bonhamcm@thirdeyeconsulting.com">Chris Bonham</a>
 */
public class InterruptExample {

    public void run() throws Exception {
        final Logger log = LoggerFactory.getLogger(InterruptExample.class);

        log.info("------- Initializing ----------------------");

        // First we must get a reference to a scheduler
        SchedulerFactory sf = new StdSchedulerFactory();
        Scheduler sched = sf.getScheduler();

        log.info("------- Initialization Complete -----------");

        log.info("------- Scheduling Jobs -------------------");

        // get a "nice round" time a few seconds in the future...
        Date startTime = nextGivenSecondDate(null, 15);

        JobDetail job = newJob(DumbInterruptableJob.class)
            .withIdentity("interruptableJob1", "group1")
            .build();
        
        SimpleTrigger trigger = newTrigger() 
            .withIdentity("trigger1", "group1")
            .startAt(startTime)
            .withSchedule(simpleSchedule()
                    .withIntervalInSeconds(5)
                    .repeatForever())
            .build();

        Date ft = sched.scheduleJob(job, trigger);
        log.info(job.getKey() + " will run at: " + ft + " and repeat: "
                + trigger.getRepeatCount() + " times, every "
                + trigger.getRepeatInterval() / 1000 + " seconds");

        // start up the scheduler (jobs do not start to fire until
        // the scheduler has been started)
        sched.start();
        log.info("------- Started Scheduler -----------------");
        

        log.info("------- Starting loop to interrupt job every 7 seconds ----------");
        for(int i=0; i < 50; i++) {
            try {
                Thread.sleep(7000L); 
                // tell the scheduler to interrupt our job
                sched.interrupt(job.getKey());
            } catch (Exception e) {
            }
        }
        
        log.info("------- Shutting Down ---------------------");

        sched.shutdown(true);

        log.info("------- Shutdown Complete -----------------");
        SchedulerMetaData metaData = sched.getMetaData();
        log.info("Executed " + metaData.getNumberOfJobsExecuted() + " jobs.");

    }

    public static void main(String[] args) throws Exception {

        InterruptExample example = new InterruptExample();
        example.run();
    }

}
