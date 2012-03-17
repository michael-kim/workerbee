package com.nexr.workerbee.exception;

public class ApplicationException extends Exception {
	static final long serialVersionUID = 1;
	protected Object source;
	
	public ApplicationException(Object source){
		this.source = source;
	}
	
	public Object getSource() {
		return source;
	}

}
