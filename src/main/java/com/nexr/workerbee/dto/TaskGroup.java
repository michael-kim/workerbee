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
@Table(name="`TASK_GROUPS`")
public class TaskGroup {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @Column(name="NAME",nullable=false)
    private String name;
    
    @Column(name="DESCRIPTION")
    private String description;
    
    @ManyToOne
    @JoinColumn(name="PARENT_ID",nullable=true)
    private TaskGroup parent;
    
    @OneToMany(mappedBy="parent")
    private List<TaskGroup> children = new ArrayList<TaskGroup>();
    
    @OneToMany(mappedBy="taskGroup")
    private List<Task> tasks = new ArrayList<Task>();
    
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

    public TaskGroup getParent() {
        return parent;
    }

    public void setParent(TaskGroup parent) {
        this.parent = parent;
    }

    public List<TaskGroup> getChildren() {
        return children;
    }
    
    public void addChildren(TaskGroup taskGroup){
        taskGroup.setParent(this);
        children.add(taskGroup);
    }

    public List<Task> getTasks() {
        return tasks;
    }
    
    public void addTask(Task task){
        task.setTaskGroup(this);
        tasks.add(task);
    }

}
