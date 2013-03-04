package com.nexr.workerbee.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Enumeration;

public class AppServletContextListener implements ServletContextListener {

  private Logger logger;

  @Override
  public void contextInitialized(ServletContextEvent servletContextEvent) {

    String confDir = System.getenv("WORKERBEE_CONF_DIR");
    String log4jFile = System.getenv("WORKERBEE_LOG4J_FILE");
    if (confDir != null && log4jFile != null) {
      System.setProperty("log4j.configuration", "file:" + confDir + "/" + log4jFile);
    } else {
    }
    System.out.println("log4j.configuration  :" + System.getProperty("log4j.configuration"));

    String logDir = System.getenv("WORKERBEE_LOG_DIR");
    if (logDir != null) {
      System.setProperty("workerbee.log.dir", logDir);
    } else {
      System.err.println("env variable WORKERBEE_LOG_DIR is required");
      throw new IllegalArgumentException("WORKERBEE_LOG_DIR is required");
    }

    logger = LoggerFactory.getLogger(AppServletContextListener.class);

    logger.info("####################################################");
    logger.info("##        ServletContextListener STARTED          ##");
    logger.info("####################################################");

    Enumeration attributeNames = servletContextEvent.getServletContext().getAttributeNames();
    while(attributeNames.hasMoreElements()) {
      logger.info("servletConfig.getServletContext().getAttributeName : {}", attributeNames.nextElement());
    }

  }

  @Override
  public void contextDestroyed(ServletContextEvent servletContextEvent) {
    logger.info("####################################################");
    logger.info("##        ServletContextListener DESTROYED        ##");
    logger.info("####################################################");
  }

}