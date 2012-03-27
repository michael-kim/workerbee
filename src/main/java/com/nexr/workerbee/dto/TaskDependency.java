package com.nexr.workerbee.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="`TASK_DEPENDENCIES`")
public class TaskDependency {
    
    @Embeddable
    public static class Id implements Serializable{
        
        @Column(name="PARENT_TASK_ID")
        private Long parentTaskId;
        
        @Column(name="CHILD_TASK_ID")
        private Long childTaskId;
        
        public Id(){}
        
        public Id(Long parentTaskId, Long childTaskId){
            this.parentTaskId=parentTaskId;
            this.childTaskId=childTaskId;
        }
        
        public boolean equals(Object o){
            if(o!=null && o instanceof Id) {
                Id that = (Id)o;
                return this.parentTaskId.equals(that.parentTaskId) &&
                        this.childTaskId.equals(that.childTaskId);
            }else{
                return false;
            }
        }
        
        public int hasCode(){
            return parentTaskId.hashCode()+childTaskId.hashCode();
        }
        
    }
    
    @EmbeddedId
    private Id id = new Id();
    
    @ManyToOne
    @JoinColumn(name="PARENT_TASK_ID",insertable=false,updatable=false)
    private Task parentTask;
    
    @ManyToOne
    @JoinColumn(name="CHILD_TASK_ID",insertable=false,updatable=false)
    private Task childTask;
    
    public TaskDependency() {}
    public TaskDependency(Task parentTask, Task childTask){
        this.id.parentTaskId=parentTask.getId();
        this.id.childTaskId=childTask.getId();
        parentTask.addChildTaskDeps(this);
        childTask.addParentTaskDeps(this);
    }
    
    public Id getId() {
        return id;
    }
    
    public void setId(Id id) {
        this.id = id;
    }
    
    public Task getParentTask() {
        return parentTask;
    }
    
    public void setParentTask(Task parentTask) {
        this.parentTask = parentTask;
    }
    
    public Task getChildTask() {
        return childTask;
    }
    
    public void setChildTask(Task childTask) {
        this.childTask = childTask;
    }
}
