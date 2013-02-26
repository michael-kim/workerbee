package com.nexr.workerbee.vaadin.views;

import com.nexr.workerbee.spring_integration.VaadinView;
import com.vaadin.navigator.View;
import com.vaadin.navigator.ViewChangeListener;
import com.vaadin.server.ExternalResource;
import com.vaadin.ui.*;
import org.springframework.context.annotation.Scope;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

/**
 * @author xpoft
 */
@Component
@Scope("prototype")
@VaadinView(RoleUserView.NAME)
@Secured("ROLE_USER")
public class RoleUserView extends Panel implements View {
  public static final String NAME = "role_user";

  @PostConstruct
  public void PostConstruct() {
    setSizeFull();
    VerticalLayout layout = new VerticalLayout();
    layout.setSpacing(true);
    layout.setMargin(true);

    layout.addComponent(new Label("ROLE_USER"));
    layout.addComponent(new Link("Go back", new ExternalResource("#!" + MainView.NAME)));

    setContent(layout);
  }

  @Override
  public void enter(ViewChangeListener.ViewChangeEvent event) {
  }
}
