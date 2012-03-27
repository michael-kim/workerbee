package com.nexr.workerbee.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="`TASKS`")
public class Task {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @Column(name="DESCRIPTION")
    private String description;
    
    @ManyToOne
    @JoinColumn(name="TASK_GROUP_ID",nullable=false)
    private TaskGroup taskGroup;
    
    
    @OneToMany(mappedBy="parentTask")
    private List<TaskDependency> parentTaskDeps = new ArrayList<TaskDependency>();
    
    @OneToMany(mappedBy="childTask")
    private List<TaskDependency> childTaskDeps = new ArrayList<TaskDependency>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public void addParentTaskDeps(TaskDependency parentTaskDep) {
        parentTaskDep.setChildTask(this);
        this.parentTaskDeps.add(parentTaskDep);
    }

    public List<TaskDependency> getChildTaskDeps() {
        return childTaskDeps;
    }

    public void addChildTaskDeps(TaskDependency childTaskDep) {
        childTaskDep.setParentTask(this);
        this.childTaskDeps.add(childTaskDep);
    }
}