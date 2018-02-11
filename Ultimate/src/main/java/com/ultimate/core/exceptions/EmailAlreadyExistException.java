/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.exceptions;


public class EmailAlreadyExistException extends Exception {
    
	private static final long serialVersionUID = -2163131592336700856L;

	public EmailAlreadyExistException(String email) {
		super("The email '" + email + "' is already in use.");
	}
        
}