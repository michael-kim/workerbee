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
@Table(name="MESSAGES")
public class Message {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @ManyToOne
    @JoinColumn(name="USER_PROFILE_ID",nullable=true)
    private UserProfile author;
    
    @Column(name="TITLE",length=100,nullable=false)
    private String title;
    
    @Column(name="BODY",nullable=false)
    private String body;
    
    @Column(name="CREATED",insertable=true,updatable=false,nullable=false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;
    
    @Column(name="MODIFIED",nullable=false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modified;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
    
    public Date getCreated() {
        return created;
    }
    
    public Date getModified() {
        return modified;
    }
}
