package com.nexr.workerbee.conf;

import org.springframework.util.Assert;

import java.io.File;

public class SystemVars {
  public static final String WORKERBEE_HOME;
  public static final String WORKERBEE_CONF_DIR;
  public static final String WORKERBEE_CONF_FILE;
  public static final String WORKERBEE_LOG_DIR;
  public static final String WORKERBEE_LOG4J_FILE;
  public static final String WORKERBEE_TMPDIR;

  static {
    // following property can be replaced with System.getProperty() instead of System.getenv();

    WORKERBEE_HOME = System.getenv("WORKERBEE_HOME");

    WORKERBEE_CONF_DIR = System.getenv("WORKERBEE_CONF_DIR");

    WORKERBEE_CONF_FILE = System.getenv("WORKERBEE_CONF_FILE");

    WORKERBEE_LOG_DIR = System.getenv("WORKERBEE_LOG_DIR");

    WORKERBEE_LOG4J_FILE = System.getenv("WORKERBEE_LOG4J_FILE");

    WORKERBEE_TMPDIR = System.getenv("WORKERBEE_TMPDIR");
  }

  private SystemVars() {
  }

  public static void validate() {
    try {
      //Assert.notNull(WORKERBEE_HOME,"WORKERBEE_HOME is required.");
      Assert.notNull(WORKERBEE_LOG4J_FILE, "WORKERBEE_LOG4J_FILE is required.");
      Assert.notNull(WORKERBEE_LOG_DIR, "WORKERBEE_LOG_DIR is required.");
      Assert.notNull(WORKERBEE_CONF_FILE, "WORKERBEE_CONF_FILE is required.");
      Assert.notNull(WORKERBEE_CONF_DIR, "WORKERBEE_CONF_DIR is required.");
      //Assert.notNull(WORKERBEE_TMPDIR, "WORKERBEE_TMPDIR is required.");
    } catch (Exception e) {
      System.out.println(e.getMessage());
      throw new RuntimeException(e);
    }
  }
}
