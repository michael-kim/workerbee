package com.nexr.workerbee.spring_vaadin_integration;

import com.vaadin.server.SystemMessages;

import java.io.Serializable;
import java.util.Locale;

/**
 * @author xpoft
 */
public interface SpringSystemMessagesProvider extends Serializable
{
    public SystemMessages getSystemMessages(Locale locale);
}
