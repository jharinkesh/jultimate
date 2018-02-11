/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.dao;

import com.ultimate.core.entity.ContactEnquiry;
import com.ultimate.core.entity.Customer;
import com.ultimate.core.entity.Subscriber;
import com.ultimate.core.entity.User;

/**
 *
 * @author baba
 */
public interface AccountDAO {

    Boolean insertSubscriber(Subscriber subscriber);
    
    Integer insertCustomerAndGetCustomerId(Customer customer);
    
    Boolean insertUser(User user);
    
    Boolean activateUser(String token);
    
    Boolean isEmailExistsUser(String email);
    
    Boolean isEmailExistsSubscriber(String email);
    
    User findUserByEmail(String email);
    /*---------------------------code added by uds -------------------------------------*/
    
    Boolean insertContactEnquiry(ContactEnquiry enquiry);

}
