package com.nexr.workerbee.service;

public interface XService {

  public void init() throws XServiceException;

  public void destory();

  public Class<? extends XService> getInterface();
}
