package com.nexr.workerbee.spring_vaadin_integration;

import com.vaadin.navigator.View;

/**
 * @author xpoft
 */
public interface ViewCacheContainer
{
    public View getView(String name, String beanName, boolean cached);
}
