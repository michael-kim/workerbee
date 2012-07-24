package com.nexr.workerbee.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="TASK_COMMENTS")
public class TaskComment {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @ManyToOne
    @JoinColumn(name="USER_PROFILE_ID",nullable=false)
    private UserProfile author;
    
    @ManyToOne
    @JoinColumn(name="TASK_ID",nullable=false)
    private Task task;
    
    @Column(name="COMMNET",nullable=false)
    private String comment;
    
    @Column(name="CREATED",insertable=true,updatable=false,nullable=false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;
    
    @Column(name="MODIFIED",nullable=false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modified;

    public TaskComment(){
    }
    
    public TaskComment(String comment){
        this.comment=comment;
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public UserProfile getAuthor() {
        return author;
    }

    public void setAuthor(UserProfile author) {
        this.author = author;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getCreated() {
        return created;
    }

    public Date getModified() {
        return modified;
    }

}
