package com.nexr.workerbee.conf;


import org.springframework.stereotype.Component;

import java.util.regex.Pattern;

@Component("beeConf")
public class BeeConf extends AbstractConf {

  /**
   *  define properties, use package-private instead of private modifier
   *  if you use private modifier, super class can't access members.
   */

  @BeeConfProperty(name = "workerbee.jdbc.url", defaultValue = "url")
  String jdbcUrl;

  @BeeConfProperty(name = "workerbee.jdbc.driver", defaultValue = "driver")
  String jdbcDriver;

  @BeeConfProperty(name = "workerbee.jdbc.username", defaultValue = "username")
  String jdbcUsername;

  @BeeConfProperty(name = "workerbee.jdbc.password", defaultValue = "password")
  String jdbcPassword;

  @BeeConfProperty(name = "workerbee.test.property1", defaultValue = "20")
  long testProperty1;

  @BeeConfProperty(name = "workerbee.test.property2", defaultValue = "3.0f")
  float testProperty2;

  @BeeConfProperty(name = "workerbee.test.property3", defaultValue = "333")
  int testProperty3;

  @BeeConfProperty(name = "workerbee.test.property4", defaultValue = "true")
  boolean testProperty4;

  @BeeConfProperty(name = "workerbee.test.property5", defaultValue = "20")
  Long testProperty5;

  @BeeConfProperty(name = "workerbee.test.property6", defaultValue = "3.0f")
  Float testProperty6;

  @BeeConfProperty(name = "workerbee.test.property7", defaultValue = "333")
  Integer testProperty7;

  @BeeConfProperty(name = "workerbee.test.property8", defaultValue = "true")
  Boolean testProperty8;

  @BeeConfProperty(name = "workerbee.test.property9", defaultValue = "com.nexr.workerbee.domain.User")
  Class testProeprty9;

  @BeeConfProperty(name = "workerbee.test.peropery10", defaultValue = "val1,val2,val3")
  String[] testProperty10;

  @BeeConfProperty(name = "workerbee.test.pattern", defaultValue = "[a-z][A-Z][0-9]")
  Pattern testProperty11;

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
