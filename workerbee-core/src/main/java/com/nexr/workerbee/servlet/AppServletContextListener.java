package com.nexr.workerbee.servlet;

import com.nexr.workerbee.conf.SystemVars;
import com.nexr.workerbee.service.Services;
import com.nexr.workerbee.util.Utilities;
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
    WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContextEvent.getServletContext());
    Services services = ctx.getBean(Services.class);
    services.destory();

    logger.info("####################################################");
    logger.info("##        ServletContextListener DESTROYED        ##");
    logger.info("####################################################");
  }

}