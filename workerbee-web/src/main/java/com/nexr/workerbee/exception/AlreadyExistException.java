package com.nexr.workerbee.exception;

public class AlreadyExistException extends ApplicationException{
	
	static final long serialVersionUID = 1;

	public AlreadyExistException(Object source) {
		super(source);
	}

}
