/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.service;

import com.ultimate.account.vo.ContactVO;
import com.ultimate.account.vo.RegistrationVO;
import com.ultimate.account.vo.SubscriptionVO;
import com.ultimate.core.commons.MessageProvider;
import com.ultimate.core.commons.ServerResponse;
import org.springframework.validation.BindingResult;

/**
 *
 * @author baba
 */
public interface AccountService {
    
    ServerResponse validateSubscription(SubscriptionVO subscriptionForm, MessageProvider messageProvider, BindingResult result);
    
    Boolean registerSubscriber(SubscriptionVO subscriptionForm);
    
    ServerResponse validateRegistration(RegistrationVO registrationForm, MessageProvider messageProvider, BindingResult result);
        
    Boolean registerUser(RegistrationVO registrationform);
    
    Boolean activateUser(String token);
    
    Boolean isEmailValid(String email);
    
    Boolean isEmailExistsUser(RegistrationVO registrationform);
    
    Boolean isEmailExistsSubscriber(SubscriptionVO subscriptionForm);
    
    /*---------------------------code added by uds -------------------------------------*/
    ServerResponse validateContactEnquiry(ContactVO contactForm, MessageProvider messageProvider, BindingResult result);
    
    Boolean acceptContactEnquiry(ContactVO contactForm);
 
    
}
