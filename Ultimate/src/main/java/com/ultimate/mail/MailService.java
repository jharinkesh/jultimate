/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.mail;

/**
 *
 * @author baba
 */
public interface MailService {
    
    public Boolean sendAccountActivationMail(String toEmail,String token);
    
    public Boolean sendSubscriptionMail(String toEmail);
}
