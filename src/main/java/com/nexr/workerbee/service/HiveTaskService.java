package com.nexr.workerbee.service;

import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.dto.HiveTask;

public interface HiveTaskService {
    
    @Transactional
    public void addHiveTask(HiveTask hiveTask);
    
    @Transactional
    public void updateHiveTask(HiveTask hiveTask);
}
