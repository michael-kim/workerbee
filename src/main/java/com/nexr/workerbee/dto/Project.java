package com.nexr.workerbee.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="PROJECTS")
public class Project {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @Column(name="NAME",nullable=false)
    private String name;
    
    @Column(name="DESCRIPTION")
    private String description;
    
    @OneToMany(mappedBy="project")
    private List<TaskGroup> taskGroups = new ArrayList<TaskGroup>();
    
    public Project(){
    }
    
    public Project(Long id){
        this.id=id;
    }

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

    public List<TaskGroup> getTaskGroups() {
        return taskGroups;
    }
    
    public void addTaskGroup(TaskGroup taskGroup){
        taskGroup.setProject(this);
        this.taskGroups.add(taskGroup);
    }
    
}
