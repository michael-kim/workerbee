package com.nexr.workerbee.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name="`TASKS`")
@Inheritance(strategy=InheritanceType.JOINED)
public abstract class Task {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @Column(name="NAME",nullable=false)
    private String name;
    
    @Column(name="DESCRIPTION")
    private String description;
    
    @Column(name="TASK_TYPE",nullable=false)
    @Enumerated(EnumType.STRING)
    private TaskType taskType;
    
    @Column(name="MODIFIED",nullable=false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modified;
    
    @ManyToOne
    @JoinColumn(name="TASK_GROUP_ID",nullable=false)
    private TaskGroup taskGroup;
    
    @OneToMany(mappedBy="task")
    private List<TaskComment> taskComments = new ArrayList<TaskComment>();
    
    @OneToMany(mappedBy="parentTask",cascade={CascadeType.PERSIST,CascadeType.MERGE,CascadeType.REMOVE})
    @Cascade (org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private List<TaskDependency> parentTaskDeps = new ArrayList<TaskDependency>();
    
    @OneToMany(mappedBy="childTask",cascade={CascadeType.PERSIST,CascadeType.MERGE,CascadeType.REMOVE})
    @Cascade (org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private List<TaskDependency> childTaskDeps = new ArrayList<TaskDependency>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public TaskType getTaskType() {
        return taskType;
    }

    public void setTaskType(TaskType taskType) {
        this.taskType = taskType;
    }

    public Date getModified() {
        return modified;
    }

    public TaskGroup getTaskGroup() {
        return taskGroup;
    }

    public void setTaskGroup(TaskGroup taskGroup) {
        this.taskGroup = taskGroup;
    }

    public List<TaskDependency> getParentTaskDeps() {
        return parentTaskDeps;
    }

    public List<TaskDependency> getChildTaskDeps() {
        return childTaskDeps;
    }

    public List<TaskComment> getTaskComments() {
        return taskComments;
    }

    public void addTaskComments(TaskComment taskComment) {
        taskComment.setTask(this);
        this.taskComments.add(taskComment); 
    }
    
    public void addParentTask(Task parentTask){
        TaskDependency dep = new TaskDependency(parentTask,this);
    }
    
    public void addChildTask(Task childTask){
        TaskDependency dep = new TaskDependency(this,childTask);
    }
    
    public List<Task> getParentTasks(){
        List<Task> tasks = new ArrayList<Task>();
        for(TaskDependency dep : this.parentTaskDeps){
            tasks.add(dep.getParentTask());
        }
        return tasks;
    }
    
    public List<Task> getChildTasks(){
        List<Task> tasks = new ArrayList<Task>();
        for(TaskDependency dep : this.childTaskDeps){
            tasks.add(dep.getChildTask());
        }
        return tasks;
    }
    
    public abstract String getSummaryText();
    
}
