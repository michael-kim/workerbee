package com.nexr.workerbee.service;

import com.nexr.workerbee.repository.UserRepository;
import com.nexr.workerbee.service.command.AddUserXCommand;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserXService extends AbstractXService {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    UserRepository userRepository;

    @Override
    public void init() throws XServiceException {
    }

    @Override
    public void destory() {
    }

    @Override
    public Class<? extends XService> getInterface() {
        return UserXService.class;
    }

    public void addUser(AddUserXCommand command) {

    }
}
