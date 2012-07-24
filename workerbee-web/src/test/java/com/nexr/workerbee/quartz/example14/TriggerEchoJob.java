package com.nexr.workerbee.quartz.example14;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * This is just a simple job that echos the name of the Trigger
 * that fired it.
 */
public class TriggerEchoJob implements Job {

    private static final Logger LOG = LoggerFactory.getLogger(TriggerEchoJob.class);

    /**
     * Empty constructor for job initilization
     *
     * <p>
     * Quartz requires a public empty constructor so that the
     * scheduler can instantiate the class whenever it needs.
     * </p>
     */
    public TriggerEchoJob() {
    }

    /**
     * <p>
     * Called by the <code>{@link org.quartz.Scheduler}</code> when a
     * <code>{@link org.quartz.Trigger}</code> fires that is associated with
     * the <code>Job</code>.
     * </p>
     * 
     * @throws JobExecutionException
     *             if there is an exception while executing the job.
     */
    public void execute(JobExecutionContext context)
        throws JobExecutionException {
        LOG.info("TRIGGER: " + context.getTrigger().getKey());
    }

}
