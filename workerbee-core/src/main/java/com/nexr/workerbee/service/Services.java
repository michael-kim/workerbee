package com.nexr.workerbee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;

@org.springframework.stereotype.Service
public class Services extends AbstractXService {
  Logger logger = LoggerFactory.getLogger(this.getClass());

  @Resource
  private ConfigurationService configurationService;

  private XService[] services;

  public void init() throws ServiceException {
    logger.info("XServices init() called!!");

    services = new XService[]{
            configurationService
    };
  }

  public Class<? extends XService> getInterface() {
    return Services.class;
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
