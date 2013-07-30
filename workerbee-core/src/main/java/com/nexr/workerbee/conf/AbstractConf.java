package com.nexr.workerbee.conf;

import java.io.File;
import java.lang.reflect.Field;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.regex.Pattern;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

public abstract class AbstractConf {

    protected Logger logger;

    public AbstractConf() {
        setupLogging();
        initialize();
    }

    protected abstract void setupLogging();

    private void initialize() {
        logger.info("--- Initialization Started ---");
        Configuration conf = new Configuration(false);
        conf.addResource(getSiteURL());
        
        for (Field field : BeeConf.class.getDeclaredFields()) {
            BeeConfProperty beeConfProperty = field.getAnnotation(BeeConfProperty.class);
            if (beeConfProperty == null)
                continue;
            
            String propName = beeConfProperty.name();
            String defaultValue = beeConfProperty.defaultValue();
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
                    // field.set(this, conf.getEnum(propName, Enum.valueOf(type, defaultValue)));
                } else if (Class.class.isAssignableFrom(type)) {
                    field.set(this, conf.getClassByName(defaultValue));
                } else if (Pattern.class.isAssignableFrom(type)) {
                    // field.set(this, conf.getPattern(propName, Pattern.compile(defaultValue)));
                } else {
                    throw new RuntimeException("Not support property type: " + type.getName());
                }
            } catch (Exception e) {
                throw new RuntimeException("Failed to initialize Workerbee configuration variables! Property Name : "
                        + propName + ", " + e.getMessage());
            }
        }
        logger.info("Initialization Ended ---");
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
    
    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
