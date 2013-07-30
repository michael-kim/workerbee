package com.nexr.workerbee.conf;

import com.nexr.workerbee.util.Utilities;
import org.springframework.util.Assert;

import java.io.File;

public class SystemVars {
  public static final String WORKERBEE_HOME;
  public static final String WORKERBEE_CONF_DIR;
  public static final String WORKERBEE_CONF_FILE;
  public static final String WORKERBEE_LOG_DIR;
  public static final String WORKERBEE_LOG4J_FILE;
  public static final String WORKERBEE_SCRATCH;

  static {
    // following property can be replaced with System.getProperty() instead of System.getenv();

    WORKERBEE_HOME = System.getenv("WORKERBEE_HOME");

    String confDir = System.getenv("WORKERBEE_CONF_DIR");
    WORKERBEE_CONF_DIR = (confDir !=null) ? confDir : Utilities.concatPath(WORKERBEE_HOME, "conf");

    String confFile = System.getenv("WORKERBEE_CONF_FILE");
    WORKERBEE_CONF_FILE = (confFile != null) ? confFile : "workerbee-site.xml";

    String logDir = System.getenv("WORKERBEE_LOG_DIR");
    WORKERBEE_LOG_DIR = (logDir != null) ? logDir : Utilities.concatPath(WORKERBEE_HOME, "logs");

    String log4jFile = System.getenv("WORKERBEE_LOG4J_FILE");
    WORKERBEE_LOG4J_FILE = (log4jFile != null) ? log4jFile : "workerbee-log4j.xml";

    String tmpDir = System.getenv("WORKERBEE_SCRATCH");
    WORKERBEE_SCRATCH = (tmpDir != null) ? tmpDir : Utilities.concatPath(WORKERBEE_HOME, "scratch");
  }

  private SystemVars() {
  }

  public static void validate() {
    try {
      Assert.notNull(WORKERBEE_HOME,"WORKERBEE_HOME is required.");
      Assert.notNull(WORKERBEE_LOG4J_FILE, "WORKERBEE_LOG4J_FILE is required.");
      Assert.notNull(WORKERBEE_LOG_DIR, "WORKERBEE_LOG_DIR is required.");
      Assert.notNull(WORKERBEE_CONF_FILE, "WORKERBEE_CONF_FILE is required.");
      Assert.notNull(WORKERBEE_CONF_DIR, "WORKERBEE_CONF_DIR is required.");

    } catch (Exception e) {
      System.out.println(e.getMessage());
      throw new RuntimeException(e);
    }
  }
}
