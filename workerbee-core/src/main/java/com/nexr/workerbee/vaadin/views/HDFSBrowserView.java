package com.nexr.workerbee.vaadin.views;

import com.nexr.workerbee.spring_vaadin_integration.VaadinView;
import com.vaadin.navigator.View;
import com.vaadin.navigator.ViewChangeListener;
import com.vaadin.ui.Panel;
import com.vaadin.ui.VerticalLayout;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
@Scope("prototype")
@VaadinView(HDFSBrowserView.NAME)
public class HDFSBrowserView extends Panel implements View {
  public static final String NAME = "hdfs";

  @PostConstruct
  public void postConstruct() {
    LoggerFactory.getLogger(this.getClass()).debug("POST");
    setSizeFull();
    VerticalLayout layout = new VerticalLayout();
    layout.setSpacing(true);
    layout.setMargin(true);

    setContent(layout);
  }

  @Override
  public void enter(ViewChangeListener.ViewChangeEvent viewChangeEvent) {


  }
}