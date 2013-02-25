package com.nexr.workerbee.vaadin.views;

import com.nexr.workerbee.vaadin.spring_integration.VaadinView;
import com.vaadin.navigator.View;
import com.vaadin.navigator.ViewChangeListener;
import com.vaadin.server.ExternalResource;
import com.vaadin.ui.Label;
import com.vaadin.ui.Link;
import com.vaadin.ui.Panel;
import com.vaadin.ui.VerticalLayout;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

/**
 * @author xpoft
 */
@Component
@Scope("prototype")
@VaadinView(RoleAdminView.NAME)
@Secured("ROLE_ADMIN")
public class RoleAdminView extends Panel implements View
{
    public static final String NAME = "role_admin";

    @PostConstruct
    public void PostConstruct()
    {
        LoggerFactory.getLogger(this.getClass()).debug("POST");
        setSizeFull();
        VerticalLayout layout = new VerticalLayout();
        layout.setSpacing(true);
        layout.setMargin(true);

        layout.addComponent(new Label("ROLE_ADMIN"));
        layout.addComponent(new Link("Go back", new ExternalResource("#!" + MainView.NAME)));

        setContent(layout);
    }

    @Override
    public void enter(ViewChangeListener.ViewChangeEvent event)
    {
    }
}
