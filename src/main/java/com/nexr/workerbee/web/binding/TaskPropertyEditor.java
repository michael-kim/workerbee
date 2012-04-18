package com.nexr.workerbee.web.binding;

import java.beans.PropertyEditorSupport;

import org.apache.commons.lang.StringUtils;

import com.nexr.workerbee.dto.HiveTask;
import com.nexr.workerbee.dto.JdbcTask;
import com.nexr.workerbee.dto.SshTask;
import com.nexr.workerbee.dto.Task;

public class TaskPropertyEditor extends PropertyEditorSupport {
    
    public String getAsText(){
        Task task = (Task)this.getValue();
        if (task==null) return "";
        
        return task.getTaskType().toString()+"::"+String.valueOf(task.getId());
    }
    
    public void setAsText(String text) throws IllegalArgumentException{
        String strType = StringUtils.substringBefore(text, "::");
        String strId = StringUtils.substringAfter(text,"::");
        Long taskId = Long.parseLong(strId.trim());
        Task task=null;
        if (strType.equals("HIVE")){
            task = (Task)new HiveTask();
        }else if(strType.equals("JDBC")){
            task = (Task)new JdbcTask();
        }else if(strType.equals("SSH")){
            task = (Task)new SshTask();
        }
        task.setId(taskId);
        this.setValue(task);
    }
    
}
