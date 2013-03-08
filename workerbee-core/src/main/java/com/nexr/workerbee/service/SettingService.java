package com.nexr.workerbee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("settingService")
public class SettingService extends AbstractXService {
  Logger logger = LoggerFactory.getLogger(this.getClass());

  @Override
  public void init() throws ServiceException {
    logger.info("setting service init");
  }

  @Override
  public void destory() {
  }

  public Class<? extends XService> getInterface() {
    return SettingService.class;
  }
}
