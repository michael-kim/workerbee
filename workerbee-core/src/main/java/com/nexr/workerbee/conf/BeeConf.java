package com.nexr.workerbee.conf;


import org.springframework.stereotype.Component;

import java.util.regex.Pattern;

@Component("beeConf")
public class BeeConf extends AbstractConf {

  /**
   *  define properties, use package-private instead of private modifier
   *  if you use private modifier, super class can't access members.
   */

  @Property(name = "workerbee.jdbc.url", defaultValue = "url")
  String jdbcUrl;

  @Property(name = "workerbee.jdbc.driver", defaultValue = "driver")
  String jdbcDriver;

  @Property(name = "workerbee.jdbc.username", defaultValue = "username")
  String jdbcUsername;

  @Property(name = "workerbee.jdbc.password", defaultValue = "password")
  String jdbcPassword;

  @Property(name = "workerbee.test.property1", defaultValue = "20")
  long testProperty1;

  @Property(name = "workerbee.test.property2", defaultValue = "3.0f")
  float testProperty2;

  @Property(name = "workerbee.test.property3", defaultValue = "333")
  int testProperty3;

  @Property(name = "workerbee.test.property4", defaultValue = "true")
  boolean testProperty4;

  @Property(name = "workerbee.test.property5", defaultValue = "20")
  Long testProperty5;

  @Property(name = "workerbee.test.property6", defaultValue = "3.0f")
  Float testProperty6;

  @Property(name = "workerbee.test.property7", defaultValue = "333")
  Integer testProperty7;

  @Property(name = "workerbee.test.property8", defaultValue = "true")
  Boolean testProperty8;

  @Property(name = "workerbee.test.property9", defaultValue = "com.nexr.workerbee.domain.User")
  Class testProeprty9;

  @Property(name = "workerbee.test.peropery10", defaultValue = "val1,val2,val3")
  String[] testProperty10;

  @Property(name = "workerbee.test.pattern", defaultValue = "[a-z][A-Z][0-9]")
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
