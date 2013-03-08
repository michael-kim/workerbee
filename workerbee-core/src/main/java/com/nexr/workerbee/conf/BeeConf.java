package com.nexr.workerbee.conf;


import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import java.io.File;
import java.lang.reflect.Field;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.regex.Pattern;

@Component("beeConf")
@Scope(value = ConfigurableBeanFactory.SCOPE_SINGLETON)
public class BeeConf {
  Logger logger = LoggerFactory.getLogger(this.getClass());

  /* define properties */

  @Property(name = "workerbee.jdbc.url", defaultValue = "url")
  private String jdbcUrl;
  @Property(name = "workerbee.jdbc.driver", defaultValue = "driver")
  private String jdbcDriver;
  @Property(name = "workerbee.jdbc.username", defaultValue = "username")
  private String jdbcUsername;
  @Property(name = "workerbee.jdbc.password", defaultValue = "password")
  private String jdbcPassword;
  @Property(name = "workerbee.test.property1", defaultValue = "20")
  private long testProperty1;
  @Property(name = "workerbee.test.property2", defaultValue = "3.0f")
  private float testProperty2;
  @Property(name = "workerbee.test.property3", defaultValue = "333")
  private int testProperty3;
  @Property(name = "workerbee.test.property4", defaultValue = "true")
  private boolean testProperty4;
  @Property(name = "workerbee.test.property5", defaultValue = "20")
  private Long testProperty5;
  @Property(name = "workerbee.test.property6", defaultValue = "3.0f")
  private Float testProperty6;
  @Property(name = "workerbee.test.property7", defaultValue = "333")
  private Integer testProperty7;
  @Property(name = "workerbee.test.property8", defaultValue = "true")
  private Boolean testProperty8;
  @Property(name = "workerbee.test.property9", defaultValue = "com.nexr.workerbee.domain.User")
  private Class testProeprty9;
  @Property(name = "workerbee.test.peropery10", defaultValue = "val1,val2,val3")
  private String[] testProperty10;
  @Property(name = "workerbee.test.pattern", defaultValue = "[a-z][A-Z][0-9]")
  private Pattern testProperty11;

  public BeeConf() {
    initialize();
  }

  private void initialize() {
    Configuration conf = new Configuration(false);
    conf.addResource(getSiteURL());

    for (Field field : BeeConf.class.getDeclaredFields()) {
      Property property = field.getAnnotation(Property.class);
      if (property == null) continue;

      String propName = property.name();
      String defaultValue = property.defaultValue();
      Class type = field.getType();

      try {

        if (type == int.class || type == Integer.class) {
          field.set(this, conf.getInt(propName, Integer.parseInt(defaultValue)));
        } else if (type == long.class || type == Long.class) {
          field.set(this, conf.getLong(propName, Long.parseLong(defaultValue)));
        } else if (type == float.class || type == Float.class) {
          field.set(this, conf.getFloat(propName, Float.parseFloat(defaultValue)));
        } else if (type == boolean.class || type == Boolean.class) {
          field.set(this, conf.getBoolean(propName, Boolean.parseBoolean(defaultValue)));
        } else if (String[].class.isAssignableFrom(type)) {
          field.set(this, StringUtils.getStrings(defaultValue));
        } else if (String.class.isAssignableFrom(type)) {
          field.set(this, conf.get(propName));
        } else if (Enum.class.isAssignableFrom(type)) {
          field.set(this, conf.getEnum(propName, Enum.valueOf(type, defaultValue)));
        } else if (Class.class.isAssignableFrom(type)) {
          field.set(this, conf.getClassByName(defaultValue));
        } else if (Pattern.class.isAssignableFrom(type)) {
          field.set(this, conf.getPattern(propName, Pattern.compile(defaultValue)));
        } else {
          throw new RuntimeException("Not support property type: " + type.getName());
        }
      } catch (Exception e) {
        throw new RuntimeException("Failed to initialize Workerbee configuration variables! Property Name : " + propName + ", " + e.getMessage());
      }
    }
  }

  private static synchronized URL getSiteURL() {
    URL siteUrl = null;

    String confDir = SystemVars.WORKERBEE_CONF_DIR;
    String confFile = SystemVars.WORKERBEE_CONF_FILE;

    File siteFile = new File(confDir, confFile);
    try {
      Assert.isTrue(siteFile.exists());
      siteUrl = siteFile.toURI().toURL();
    } catch (MalformedURLException e) {
      return null;
    }
    return siteUrl;
  }

  public String toString() {
    return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
  }

  public String getJdbcUrl() {
    return jdbcUrl;
  }

  public String getJdbcDriver() {
    return jdbcDriver;
  }

  public String getJdbcUsername() {
    return jdbcUsername;
  }

  public String getJdbcPassword() {
    return jdbcPassword;
  }
}
