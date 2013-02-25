package com.nexr.workerbee.server;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

public class JettyEmbeddingServer {
    private Server server;

    private String workerbeeHome;

    public void init(String[] args) throws Exception {
        int port = 12000;
        String contextPath = "/workerbee";
        try {
            port = Integer.parseInt(System.getenv("WORKERBEE_HTTP_PORT"));
        } catch (Exception e) {
        }
        if (System.getenv("WORKERBEE_ROOT_CONTEXT") != null) {
            contextPath = System.getenv("WORKERBEE_ROOT_CONTEXT");
        }

        workerbeeHome = System.getenv("WORKERBEE_HOME");
        if (workerbeeHome == null || workerbeeHome.equals("")) {
            System.err.println("ERROR : $WORKERBEE_HOME is not defined.");
            System.exit(1);
        }

        server = new Server(port);
        WebAppContext webcontext = new WebAppContext();
        webcontext.setContextPath(contextPath);
        webcontext.setWar(workerbeeHome + "/webapps/workerbee-core.war");
        server.setHandler(webcontext);
    }

    public void start() throws Exception {
        server.start();
        server.join();
    }

    public void stop() throws Exception {
        server.stop();
    }
}
