package com.nexr.workerbee.event;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

public class AllBeansInitializedPostProcessor implements ApplicationListener {
  public void onApplicationEvent(ApplicationEvent event) {
    if (event instanceof ContextRefreshedEvent) {
      executeAfterAllBeansInitialized();
    }
  }

  private void executeAfterAllBeansInitialized() {


  }
}

