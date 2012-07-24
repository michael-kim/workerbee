package com.nexr.workerbee.quartz.example13;
import org.quartz.PersistJobDataAfterExecution;
import org.quartz.DisallowConcurrentExecution;;

/**
 * This job has the same functionality of SimpleRecoveryJob
 * except that this job implements is 'stateful', in that it
 * will have it's data (JobDataMap) automatically re-persisted 
 * after each execution, and only one instance of the JobDetail
 * can be executed at a time.
 * 
 * @author Bill Kratzer
 */
@PersistJobDataAfterExecution
@DisallowConcurrentExecution
public class SimpleRecoveryStatefulJob
    extends SimpleRecoveryJob
{

    public SimpleRecoveryStatefulJob() {
        super();
    }
}
