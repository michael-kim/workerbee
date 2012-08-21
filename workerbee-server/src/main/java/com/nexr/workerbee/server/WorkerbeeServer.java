package com.nexr.workerbee.server;


public class WorkerbeeServer {
    
    private JettyEmbeddingServer server;

    public void init(String[] args) throws Exception {
        server = new JettyEmbeddingServer();
        server.init(args);
    }

    public void start() throws Exception {
        server.start();
    }

    public void stop() throws Exception {
        server.stop();
    }

    public void destroy() {
    }

    public static void main(String[] args) throws Exception {
        WorkerbeeServer server = new WorkerbeeServer();
        server.init(args);
        server.start();
	}
}
