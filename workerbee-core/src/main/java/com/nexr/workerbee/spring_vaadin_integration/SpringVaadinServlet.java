package com.nexr.workerbee.spring_vaadin_integration;

import com.vaadin.server.*;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import java.util.Date;
import java.util.Enumeration;

/**
 * @author xpoft
 */
public class SpringVaadinServlet extends VaadinServlet
{
    private static Logger logger = LoggerFactory.getLogger(SpringVaadinServlet.class);
    /**
     * Servlet parameter name for UI bean
     */
    private static final String INIT_BEAN_NAME_PARAMETER = "initBeanName";
    /**
     * Servlet parameter name for UI bean
     */
    private static final String SYSTEM_MESSAGES_BEAN_NAME_PARAMETER = "systemMessagesBeanName";
    /**
     * Spring Application Context
     */
    private transient ApplicationContext applicationContext;
    /**
     * Servlet start date
     */
    private transient Date servletStartDate = new Date();
    /**
     * UI bean name
     */
    private String vaadinBeanName = "ui";
    private String systemMessagesBeanName = "";

    @Override
    public void init(ServletConfig servletConfig) throws ServletException
    {
        applicationContext = WebApplicationContextUtils.getWebApplicationContext(servletConfig.getServletContext());
        logger.info("####### ServletConfig.getServletName() {} ########", servletConfig.getServletName());

      Enumeration attributeNames = servletConfig.getServletContext().getAttributeNames();
      while(attributeNames.hasMoreElements()) {
        logger.info("servletConfig.getServletContext().getAttributeName : {}", attributeNames.nextElement());
      }

      logger.info("bean names", StringUtils.join(applicationContext.getBeanDefinitionNames(), ","));

      Class<?> myUI = applicationContext.getType("myUI");
      logger.info("myUI : {}", myUI.getCanonicalName());
      if (servletConfig.getInitParameter(INIT_BEAN_NAME_PARAMETER) != null)
        {
            vaadinBeanName = servletConfig.getInitParameter(INIT_BEAN_NAME_PARAMETER);
            logger.debug("found INIT_BEAN_NAME_PARAMETER: {}", vaadinBeanName);
        }

        if (servletConfig.getInitParameter(SYSTEM_MESSAGES_BEAN_NAME_PARAMETER) != null)
        {
            systemMessagesBeanName = servletConfig.getInitParameter(SYSTEM_MESSAGES_BEAN_NAME_PARAMETER);
            logger.debug("found SYSTEM_MESSAGES_BEAN_NAME_PARAMETER: {}", systemMessagesBeanName);
        }

        if (SpringApplicationContext.getApplicationContext() == null)
        {
            SpringApplicationContext.setApplicationContext(applicationContext);
        }

        super.init(servletConfig);
    }

    @Override
    protected VaadinServletService createServletService(DeploymentConfiguration deploymentConfiguration)
    {
        final VaadinServletService service = super.createServletService(deploymentConfiguration);

        // Spring system messages provider
        if (systemMessagesBeanName != null && systemMessagesBeanName != "")
        {
            SpringVaadinSystemMessagesProvider messagesProvider = new SpringVaadinSystemMessagesProvider(applicationContext, systemMessagesBeanName);
            logger.debug("set SpringVaadinSystemMessagesProvider");
            service.setSystemMessagesProvider(messagesProvider);
        }

        // Add UI provider for new session
        service.addSessionInitListener(new SessionInitListener()
        {
            @Override
            public void sessionInit(SessionInitEvent event) throws ServiceException
            {
                event.getSession().addUIProvider(new SpringUIProvider(vaadinBeanName));
            }
        });

        return service;
    }
}
