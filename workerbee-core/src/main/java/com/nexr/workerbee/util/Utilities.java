package com.nexr.workerbee.util;

import java.io.File;

public class Utilities {
  private Utilities(){
  }

  public static String concatPath(String dir, String file) {
    if (dir.endsWith(File.separator)) {
      return dir + file;
    } else {
      return dir+ File.separator + file;
    }
  }
}
