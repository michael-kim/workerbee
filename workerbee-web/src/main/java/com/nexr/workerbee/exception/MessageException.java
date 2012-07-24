package com.nexr.workerbee.exception;

public class MessageException extends RuntimeException {
	static final long serialVersionUID = 1;
	private String code;
	private Object [] arguments;
	
	public MessageException(String code){
		this.code=code;
	}
	
	public MessageException(String code,Object... arguments){
		this.code=code;
		this.arguments=arguments;
	}
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code){
		this.code=code;
	}
	
	public Object[] getArguments(){
		return arguments;
	}
	
	public void setArguments(Object[] arguments){
		this.arguments = arguments;
	}
	
	public String toString(){
		return "MessageException [code="+code+", arguments = "+arguments+"]";
	}

}
