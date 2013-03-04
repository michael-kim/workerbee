package com.nexr.workerbee.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

public class AllBeansInitializedPostProcessor implements ApplicationListener {

  Logger logger = LoggerFactory.getLogger(this.getClass());

  public void onApplicationEvent(ApplicationEvent event) {
      if (event instanceof ContextRefreshedEvent) {
        executeAfterAllBeansInitialized((ContextRefreshedEvent) event);
      }
  }

  private void executeAfterAllBeansInitialized(ContextRefreshedEvent event) {
    logger.info("#########################################");
    logger.info("##        All beans initiated          ##");
    logger.info("#########################################");
    logger.info("applicationContext.getDisplayName : {}", event.getApplicationContext().getDisplayName());
    logger.info("source : {}", event.getSource());
  }
}

