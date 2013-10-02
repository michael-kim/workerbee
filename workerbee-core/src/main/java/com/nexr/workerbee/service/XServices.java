package com.nexr.workerbee.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@org.springframework.stereotype.Service
public class XServices extends AbstractXService {
    Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Resource
    private ConfigurationXService configurationXService;

    @Resource
    private UserXService userXService;

    private XService[] services;
    
    public void init() throws XServiceException {
        logger.info("XServices init() called!!");
        
        services = new XService[] {
                configurationXService,
                userXService
        };
    }
    
    public Class<? extends XService> getInterface() {
        return XServices.class;
    }
    
    public void destory() {
        logger.info("XServices shutting down");
        for (XService service : services) {
            try {
                logger.info("Destroying service[{}]", service.getInterface().getName());
                service.destory();
            } catch (Throwable ex) {
                logger.error("Error destorying service[{}], {}", service.getInterface().getName(), ex.getMessage(), ex);
            }
        }
        services = null;
    }
    
}
