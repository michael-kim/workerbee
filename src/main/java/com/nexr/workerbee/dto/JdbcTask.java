package com.nexr.workerbee.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="JDBC_TASKS")
public class JdbcTask extends Task{
    @Column(name="URL")
    private String url;
    
    @Column(name="USERNAME")
    private String username;
    
    @Column(name="PASSWORD")
    private String password;

    @Column(name="QUERY")
    private String query;
    
    public JdbcTask(){
        super();
        this.setTaskType(TaskType.JDBC);
    }
    
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }

    @Override
    public String getSummaryText() {
        return this.query;
    }
    
}
