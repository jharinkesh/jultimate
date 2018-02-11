/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.vo;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;


public @Data class ContactVO {
 
    @NotEmpty
    private String name;
    @NotEmpty
    private String email;
    @NotEmpty
    private String message;
  
}
