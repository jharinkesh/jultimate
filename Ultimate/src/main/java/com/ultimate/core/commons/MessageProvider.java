/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.commons;

import javax.inject.Inject;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;


@Component
public class MessageProvider {
    
    @Inject
    MessageSource messageSource;
    
    public String getMessage(String key){        
        return messageSource.getMessage(key, null, null);
    }
    
    public String getMessage(String key,Object[] object){
         return messageSource.getMessage(key, object, null);
    }
    
}
