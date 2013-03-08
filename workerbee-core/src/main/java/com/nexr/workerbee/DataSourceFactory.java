package com.nexr.workerbee;


import com.nexr.workerbee.conf.BeeConf;
import org.apache.commons.dbcp.BasicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

@Configuration("dataSourceFactory")
public class DataSourceFactory {
  Logger logger = LoggerFactory.getLogger(this.getClass());

  @Resource
  private BeeConf beeConf;

  BasicDataSource dataSource;

  @Bean(name = "dataSource")
  public BasicDataSource getDataSource() {
    if (dataSource != null) {
      return dataSource;
    }

    dataSource = new BasicDataSource();
    dataSource.setDriverClassName(beeConf.getJdbcDriver());
    dataSource.setUrl(beeConf.getJdbcUrl());
    dataSource.setUsername(beeConf.getJdbcUsername());
    dataSource.setPassword(beeConf.getJdbcPassword());
    logger.info("DataSource Initialized!");
    return dataSource;
  }
}
