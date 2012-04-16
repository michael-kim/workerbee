package com.nexr.workerbee.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="HIVE_TASKS")
public class HiveTask extends Task{
    
    @Column(name="QUERY")
    
    private String query;

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }
}
