/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.controller;

import com.ultimate.account.service.AccountService;
import com.ultimate.account.util.AccountConstants;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(AccountConstants.WEB_PREFIX)
public class AccountController {

    @Inject
    AccountService accountService;

    @RequestMapping(value = AccountConstants.REGISTRATION_FORM, method = RequestMethod.GET)
    public String getHomePage() {
        return "home/registrationform";
    }

    @RequestMapping(value = AccountConstants.ACTIVATION, method = RequestMethod.GET)
    public String activateAccount(@PathVariable("token") String token) {
        System.out.println("Token :" + token);
        return accountService.activateUser(token) ? "home/account_activated" : "home/error";
    }
}
