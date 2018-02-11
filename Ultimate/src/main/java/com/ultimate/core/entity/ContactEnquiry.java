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
@Document(collection = "ContactEnquiry")
public class ContactEnquiry {

        @Id 
        private String id;
        
        private String name;          
        private String email;    
        private String message; 
        private Boolean visited; 
        private Boolean status;
    
}
