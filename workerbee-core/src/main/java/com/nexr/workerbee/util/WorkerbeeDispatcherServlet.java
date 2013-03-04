package com.nexr.workerbee.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletException;

public class WorkerbeeDispatcherServlet extends DispatcherServlet {

  Logger logger = LoggerFactory.getLogger(this.getClass());

  @Override
  protected void initFrameworkServlet() throws ServletException {
    super.initFrameworkServlet();

    logger.info("####################################################");
    logger.info("##        Serlvet initialization completed!!      ##");
    logger.info("####################################################");

  }
}
