/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.service;

import com.ultimate.account.dao.AccountDAO;
import com.ultimate.account.vo.ContactVO;
import com.ultimate.account.vo.RegistrationVO;
import com.ultimate.account.vo.SubscriptionVO;
import com.ultimate.core.commons.MessageProvider;
import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.entity.ContactEnquiry;
import com.ultimate.core.entity.Customer;
import com.ultimate.core.entity.Subscriber;
import com.ultimate.core.entity.User;
import com.ultimate.core.oauth.OAuth2AccessTokenService;
import com.ultimate.mail.MailService;
import java.util.Date;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.validation.BindingResult;

/**
 *
 * @author baba
 */
@Service
public class AccountServiceImpl implements AccountService {
    
    @Inject
    AccountDAO accountDAO;
    
    @Inject
    MailService mailService;
    
    @Override
    public ServerResponse validateSubscription(SubscriptionVO subscriptionForm, MessageProvider messageProvider, BindingResult result) {
        
        ServerResponse r;
        
        if (result.hasErrors()) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
        } else if (!isEmailValid(subscriptionForm.getEmail())) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("email.message"));
        } else if (isEmailExistsSubscriber(subscriptionForm)) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("email.already.registered"));
        } else {
            r = new ServerResponse(ServerResponse.OK, null);
        }
        
        return r;
        
    }
    
    @Override
    public Boolean registerSubscriber(SubscriptionVO subscriptionForm) {
        
        Subscriber subscriber = new Subscriber(null, subscriptionForm.getEmail(), true);
        
        if (accountDAO.insertSubscriber(subscriber)) {
            mailService.sendSubscriptionMail(subscriber.getEmail());
            return true;
        }
        return false;
    }
    
    @Override
    public ServerResponse validateRegistration(RegistrationVO registrationForm, MessageProvider messageProvider, BindingResult result) {
        
        ServerResponse r;
        
        if (result.hasErrors()) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
        } else if (!isEmailValid(registrationForm.getEmail())) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("email.message"));
        } else if (isEmailExistsUser(registrationForm)) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("email.already.registered"));
        } else {
            r = new ServerResponse(ServerResponse.OK, null);
        }
        
        return r;
    }
    
    @Override
    public Boolean registerUser(RegistrationVO registrationform) {
        
        Customer customer = new Customer(null, registrationform.getPhone(), new Date());
        
        Integer customerId = accountDAO.insertCustomerAndGetCustomerId(customer);
        
        if (customerId == 0) {
            return false;
        }
        
        String tokenuser = OAuth2AccessTokenService.generateAccessToken(registrationform.getEmail(), registrationform.getPassword(), String.valueOf(System.currentTimeMillis()), "345664");
        
        User user = new User(null, customerId, registrationform.getEmail(), registrationform.getPassword(), 0, "ROLE_USER", null, tokenuser);
        
        System.out.println("customer inserted with " + customerId);
        
        if (accountDAO.insertUser(user)) {
            mailService.sendAccountActivationMail(user.getEmail(), tokenuser);
            return true;
        }
        return false;
    }
    
    @Override
    public Boolean activateUser(String token) {
        return accountDAO.activateUser(token);
    }
    
    @Override
    public Boolean isEmailValid(String email) {
        
        EmailValidator emailValidator = EmailValidator.getInstance(true);
        
        return emailValidator.isValid(email);
        
    }
    
    @Override
    public Boolean isEmailExistsUser(RegistrationVO registrationform) {
        
        return accountDAO.isEmailExistsUser(registrationform.getEmail());
    }
    
    @Override
    public Boolean isEmailExistsSubscriber(SubscriptionVO subscriptionForm) {
        return accountDAO.isEmailExistsSubscriber(subscriptionForm.getEmail());
    }
    /*---------------------------code added by uds -------------------------------------*/
    
    public ServerResponse validateContactEnquiry(ContactVO contactForm, MessageProvider messageProvider, BindingResult result) {
        
        ServerResponse r;
        
        if (result.hasErrors()) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
        } else if (!isEmailValid(contactForm.getEmail())) {
            r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("email.message"));
        } else {
            r = new ServerResponse(ServerResponse.OK, null);
        }
        
        return r;
        
    }
    
    @Override
    public Boolean acceptContactEnquiry(ContactVO contactForm) {
        
        ContactEnquiry enquiry = new ContactEnquiry(null, contactForm.getName(), contactForm.getEmail(), contactForm.getMessage(), false, true);
        
        return accountDAO.insertContactEnquiry(enquiry);
    }
    
}
