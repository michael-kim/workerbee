package com.nexr.workerbee.util;

import com.nexr.workerbee.conf.SystemVars;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Enumeration;

public class AppServletContextListener implements ServletContextListener {

  private Logger logger;

  @Override
  public void contextInitialized(ServletContextEvent servletContextEvent) {

    SystemVars.validate();

    String confDir = SystemVars.WORKERBEE_CONF_DIR;
    String log4jFile = SystemVars.WORKERBEE_LOG4J_FILE;
    String logDir = SystemVars.WORKERBEE_LOG_DIR;

    System.setProperty("log4j.configuration", "file:" + Utilities.concatPath(confDir, log4jFile));
    System.setProperty("workerbee.log.dir", logDir);

    logger = LoggerFactory.getLogger(AppServletContextListener.class);
    logger.info("####################################################");
    logger.info("##        ServletContextListener STARTED          ##");
    logger.info("####################################################");

    Enumeration attributeNames = servletContextEvent.getServletContext().getAttributeNames();
    while (attributeNames.hasMoreElements()) {
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