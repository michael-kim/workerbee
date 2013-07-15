package com.nexr.workerbee;

import javax.annotation.Resource;

import org.apache.commons.dbcp.BasicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.nexr.workerbee.conf.BeeConf;

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
        dataSource.setMaxWait(-1);
        dataSource.setTestOnBorrow(true);
        logger.info("DataSource Initialized!");
        return dataSource;
    }
}
