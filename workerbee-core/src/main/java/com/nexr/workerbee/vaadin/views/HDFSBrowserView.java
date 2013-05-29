package com.nexr.workerbee.vaadin.views;

import com.nexr.workerbee.spring_vaadin_integration.VaadinView;
import com.vaadin.event.Action;
import com.vaadin.navigator.View;
import com.vaadin.navigator.ViewChangeListener;
import com.vaadin.ui.Panel;
import com.vaadin.ui.TreeTable;
import com.vaadin.ui.VerticalLayout;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.Date;
import java.util.Random;

@Component
@Scope("prototype")
@VaadinView(HDFSBrowserView.NAME)
public class HDFSBrowserView extends Panel implements View {
  public static final String NAME = "hdfs";

  private static final String HOURS_PROPERTY = "hour";
  private static final String NAME_PROPERTY = "name";
  private static final String MODIFIED_PROPERTY = "modified";

  @PostConstruct
  public void postConstruct() {
    LoggerFactory.getLogger(this.getClass()).debug("POST");
    setSizeFull();
    VerticalLayout layout = new VerticalLayout();
    layout.setSpacing(true);
    layout.setMargin(true);
    setContent(layout);

    final TreeTable sample = new TreeTable();
    sample.setSizeFull();
    sample.setSelectable(true);
    sample.addContainerProperty(NAME_PROPERTY, String.class, "");
    sample.addContainerProperty(HOURS_PROPERTY, Integer.class, 0);
    sample.addContainerProperty(MODIFIED_PROPERTY, Date.class, new Date());

    populateWithRandomHierarchicalData(sample);

    sample.addActionHandler(new Action.Handler() {
      @Override
      public void handleAction(final Action action, final Object sender,
                               final Object target) {
        if (action == ADD_ITEM_ACTION) {
          // Create new item
          final Object item = sample.addItem(new Object[] {
                  "New Item", 0, new Date() }, null);
          sample.setChildrenAllowed(item, false);
          sample.setParent(item, target);
        } else if (action == ADD_CATEGORY_ACTION) {
          final Object item = sample.addItem(new Object[] {
                  "New Category", 0, new Date() }, null);
          sample.setParent(item, target);
        } else if (action == REMOVE_ITEM_ACTION) {
          sample.removeItem(target);
        }
      }

      @Override
      public Action[] getActions(final Object target, final Object sender) {

        if (target == null) {
          // Context menu in an empty space -> add a new main category
          return new Action[] { ADD_CATEGORY_ACTION };

        } else if (sample.areChildrenAllowed(target)) {
          // Context menu for a category
          return new Action[] { ADD_CATEGORY_ACTION, ADD_ITEM_ACTION,
                  REMOVE_ITEM_ACTION };

        } else {
          // Context menu for an item
          return new Action[] { REMOVE_ITEM_ACTION };
        }
      }
    });

  }

  private void populateWithRandomHierarchicalData(final TreeTable sample) {
    final Random random = new Random();
    int hours = 0;
    final Object allProjects = sample.addItem(new Object[] {
            "All Projects", 0, new Date() }, null);
    for (final int year : Arrays.asList(2010, 2011, 2012, 2013)) {
      int yearHours = 0;
      final Object yearId = sample.addItem(new Object[] { "Year " + year,
              yearHours, new Date() }, null);
      sample.setParent(yearId, allProjects);
      for (int project = 1; project < random.nextInt(4) + 2; project++) {
        int projectHours = 0;
        final Object projectId = sample.addItem(
                new Object[] { "Customer Project " + project,
                        projectHours, new Date() }, null);
        sample.setParent(projectId, yearId);
        for (final String phase : Arrays.asList("Implementation",
                "Planning", "Prototype")) {
          final int phaseHours = random.nextInt(50);
          final Object phaseId = sample.addItem(new Object[] { phase,
                  phaseHours, new Date() }, null);
          sample.setParent(phaseId, projectId);
          sample.setChildrenAllowed(phaseId, false);
          sample.setCollapsed(phaseId, false);
          projectHours += phaseHours;
        }
        yearHours += projectHours;
        sample.getItem(projectId).getItemProperty(HOURS_PROPERTY)
                .setValue(projectHours);
        sample.setCollapsed(projectId, false);
      }
      hours += yearHours;
      sample.getItem(yearId).getItemProperty(HOURS_PROPERTY)
              .setValue(yearHours);
      sample.setCollapsed(yearId, false);
    }
    sample.getItem(allProjects).getItemProperty(HOURS_PROPERTY)
            .setValue(hours);
    sample.setCollapsed(allProjects, false);
  }

  @Override
  public void enter(ViewChangeListener.ViewChangeEvent viewChangeEvent) {


  }
}