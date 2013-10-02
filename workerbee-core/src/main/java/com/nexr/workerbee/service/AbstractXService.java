package com.nexr.workerbee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.PostConstruct;
import java.util.HashSet;
import java.util.Set;

public abstract class AbstractXService implements XService {
  Logger logger = LoggerFactory.getLogger(this.getInterface());

  private static Set<String> INITIALIZED_SET = new HashSet<String>();

  private boolean isInitialized() {
    return (INITIALIZED_SET.contains(this.getInterface().getName()) ? true : false );
  }

  private void markInitialized() {
    INITIALIZED_SET.add(this.getInterface().getName());
  }

  @PostConstruct
  protected void postConstruct() throws XServiceException {
    if (!isInitialized()) {
      logger.info("Initializing service [{}]", getInterface().getName());
      init();
      markInitialized();
    }
  }

  public abstract void init() throws XServiceException;

  public abstract void destory();

  public abstract Class<? extends XService> getInterface();
}