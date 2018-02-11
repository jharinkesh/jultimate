package com.ultimate.core.exceptions;

public class RecordsNotFoundException extends Exception{

	private static final long serialVersionUID = -5605034130936916984L;
	
	public RecordsNotFoundException(){
		super("No records found");
	}
	
	public RecordsNotFoundException(String message){
		super(message);
	}

}
