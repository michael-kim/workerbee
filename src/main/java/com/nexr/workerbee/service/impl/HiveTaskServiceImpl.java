package com.nexr.workerbee.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.dao.HiveTaskDao;
import com.nexr.workerbee.dto.HiveTask;
import com.nexr.workerbee.service.HiveTaskService;

@Service("hiveTaskService")
public class HiveTaskServiceImpl implements HiveTaskService{

    @Resource
    HiveTaskDao hiveTaskDao;
    
    @Override
    public void addHiveTask(HiveTask hiveTask) {
        hiveTaskDao.makePersistent(hiveTask);
        hiveTaskDao.flush();
    }

    @Override
    public void updateHiveTask(HiveTask hiveTask) {
        hiveTaskDao.merge(hiveTask);
        hiveTaskDao.flush();        
    }
    
}
