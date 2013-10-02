package com.nexr.workerbee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("configurationService")
public class ConfigurationXService extends AbstractXService {
  Logger logger = LoggerFactory.getLogger(this.getClass());

  @Override
  public void init() throws XServiceException {
    logger.info("configuration service init");
  }

  @Override
  public void destory() {
  }

  @Override
  public Class<? extends XService> getInterface() {
    return ConfigurationXService.class;
  }
}
