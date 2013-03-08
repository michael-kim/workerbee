package com.nexr.workerbee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class XServices extends AbstractXService {
  Logger logger = LoggerFactory.getLogger(this.getClass());

  @Resource
  private ConfigurationService configurationService;

  @Resource
  private SettingService settingService;

  private XService[] services;

  public void init() throws ServiceException {
    logger.info("XServices init() called!!");

    services = new XService[]{
            configurationService,
            settingService
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
