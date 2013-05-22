package com.nexr.workerbee.servlet;

import com.nexr.workerbee.InitialDataPopulator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

public class DispatcherServletInitPostProcessor implements ApplicationListener {

  Logger logger = LoggerFactory.getLogger(this.getClass());

  public void onApplicationEvent(ApplicationEvent event) {
    if (event instanceof ContextRefreshedEvent) {
      ApplicationContext ctx = ((ContextRefreshedEvent) event).getApplicationContext();
      if (ctx.getDisplayName().contains("SpringDispatcherServlet-servlet")) {
        executeAfterAllBeansInitialized(ctx);
      } else {
        logger.info("################" + ctx.getDisplayName() + " ##################");
      }
    }
  }

  private void executeAfterAllBeansInitialized(ApplicationContext ctx) {
    logger.info("#####################################################################");
    logger.info("##    SpringDispatcherServlet-servlet initialization completed     ##");
    logger.info("#####################################################################");

    InitialDataPopulator populator = ctx.getBean(InitialDataPopulator.class);
    populator.populate();
  }
}

