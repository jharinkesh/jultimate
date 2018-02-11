/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 *
 * @author baba
 */
@Data
@AllArgsConstructor
@Document(collection = "User")
public class User {
    
    	@Id
	private Integer id;
        
        private Integer customerId;
        
        private String email;
        
        private String password;
        
        private Integer activation;
        
        private String role;
        
        private String imagePath;
        
        private String activationCode;
            
}
