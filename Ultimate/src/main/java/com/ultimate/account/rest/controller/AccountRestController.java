/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.rest.controller;

import com.ultimate.account.service.AccountService;
import com.ultimate.account.util.AccountConstants;
import com.ultimate.account.vo.ContactVO;
import com.ultimate.account.vo.RegistrationVO;
import com.ultimate.account.vo.SubscriptionVO;
import com.ultimate.core.commons.MessageProvider;
import com.ultimate.core.commons.ServerResponse;
import javax.inject.Inject;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(AccountConstants.REST_PREFIX)
public class AccountRestController {

    @Inject
    AccountService accountService;

    @Inject
    MessageProvider messageProvider;
    
    @RequestMapping(value = AccountConstants.SUBSCRIPTION, method = RequestMethod.POST)
    ServerResponse subscribe(@RequestBody @Valid SubscriptionVO subscriptionForm, BindingResult result) {

        System.out.println("subscription request:" + subscriptionForm.toString());

        ServerResponse r = accountService.validateSubscription(subscriptionForm, messageProvider, result);

        if (r.getStatus().equals(ServerResponse.OK)) {
            if (accountService.registerSubscriber(subscriptionForm)) {
                r = new ServerResponse(ServerResponse.OK, messageProvider.getMessage("subscription.success"));
            } else {
                r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
            }
        }

        return r;
    }

    @RequestMapping(value = AccountConstants.REGISTRATION, method = RequestMethod.POST)
    ServerResponse register(@RequestBody @Valid RegistrationVO registrationForm, BindingResult result) {

        System.out.println("signup request:" + registrationForm.toString());

        ServerResponse r = accountService.validateRegistration(registrationForm, messageProvider, result);

        if (r.getStatus().equals(ServerResponse.OK)) {
            if (accountService.registerUser(registrationForm)) {
                r = new ServerResponse(ServerResponse.OK, messageProvider.getMessage("account.registered_successful"));
            } else {
                r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
            }
        }

        return r;
    }
    /*---------------------------code added by uds -------------------------------------*/
    @RequestMapping(value = AccountConstants.CONTACT, method = RequestMethod.POST)
    ServerResponse contact(@RequestBody @Valid ContactVO contactForm, BindingResult result) {

        System.out.println("contact request:" + contactForm.toString());

        ServerResponse r = accountService.validateContactEnquiry(contactForm, messageProvider, result);

        if (r.getStatus().equals(ServerResponse.OK)) {
            if (accountService.acceptContactEnquiry(contactForm)) {
                r = new ServerResponse(ServerResponse.OK, messageProvider.getMessage("contact.success"));
            } else {
                r = new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
            }
        }

        return r;
    }
}
