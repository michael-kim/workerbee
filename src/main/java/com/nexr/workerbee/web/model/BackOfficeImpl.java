package com.nexr.workerbee.web.model;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.MapMessage;
import javax.jms.MessageConsumer;
import javax.jms.Session;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.command.ActiveMQQueue;

import com.nexr.workerbee.post.Mail;

public class BackOfficeImpl {
	public Mail recceiveMail(){
		ConnectionFactory cf = 
				new ActiveMQConnectionFactory("tcp://localhost:61616");
		Destination destination = new ActiveMQQueue("mail.queue");
		
		Connection conn=null;
		try{
			conn = cf.createConnection();
			Session session = 
					conn.createSession(false, Session.AUTO_ACKNOWLEDGE);
			MessageConsumer consumer = session.createConsumer(destination);
			conn.start();
			
			MapMessage message = (MapMessage)consumer.receive();
			Mail mail = new Mail();
			mail.setMailId(message.getString("mailId"));
			mail.setCounty(message.getString("contry"));
			mail.setWeight(message.getDouble("weight"));
			session.close();
			return mail;
			
		}catch(JMSException e){
			throw new RuntimeException(e);
		} finally {
			if(conn!=null){
				try{
					conn.close();
				}catch(JMSException e){
				}
			}
		}
	}
}
