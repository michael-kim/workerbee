package com.nexr.workerbee.server;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

public class WorkerbeeServer {
    
    public static void main(String... args) throws Exception {
        
        int port = 12000;
        
        Server server = new Server(port);
        
        WebAppContext webapp = new WebAppContext();
        webapp.setContextPath("/workerbee");
        webapp.setWar("/webapps/workerbee-web.war");
        server.setHandler(webapp);
        
        server.start();
        server.join();
    }
    
}
