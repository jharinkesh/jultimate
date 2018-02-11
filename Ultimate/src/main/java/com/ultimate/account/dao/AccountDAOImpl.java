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
import com.ultimate.seq.dao.SequenceDao;
import javax.inject.Inject;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author baba
 */
@Repository
public class AccountDAOImpl implements AccountDAO {

    @Inject
    private MongoOperations mongoOperations;

    @Inject
    SequenceDao sequenceDao;

    @Override
    public Boolean insertSubscriber(Subscriber subscriber) {

        try {
            mongoOperations.save(subscriber);
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    @Override
    public Integer insertCustomerAndGetCustomerId(Customer customer) {

        Integer customerId = 0;
        try {
            customerId = sequenceDao.getNextSequenceId("customer");

            if (customerId == 0) {
                return 0;
            }
            customer.setId(customerId);
            mongoOperations.save(customer);
        } catch (Exception ex) {
            return 0;
        }

        return customerId;
    }

    @Override
    public Boolean insertUser(User user) {

        try {
            user.setId(sequenceDao.getNextSequenceId("user"));
            mongoOperations.save(user);
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    @Override
    public Boolean activateUser(String token) {

        try {
            User user = mongoOperations.findOne(new Query(Criteria.where("activationCode").is(token)), User.class);

            if (user != null) {
                user.setActivationCode("");
                user.setActivation(1);
                mongoOperations.save(user);
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;
    }

    @Override
    public Boolean isEmailExistsUser(String email) {

        try {
            return mongoOperations.findOne(new Query(Criteria.where("email").is(email)), User.class) != null;
        } catch (Exception e) {
        }

        return true;
    }

    @Override
    public Boolean isEmailExistsSubscriber(String email) {
        try {
            return mongoOperations.findOne(new Query(Criteria.where("email").is(email)), Subscriber.class) != null;
        } catch (Exception e) {
        }

        return true;
    }

    @Override
    public User findUserByEmail(String email) {
        try {
            return mongoOperations.findOne(new Query(Criteria.where("email").is(email)), User.class);
        } catch (Exception e) {
        }
        return null;
    }
    /*---------------------------code added by uds -------------------------------------*/

    public Boolean insertContactEnquiry(ContactEnquiry enquiry) {

        try {
            mongoOperations.save(enquiry);
        } catch (Exception e) {
            return false;
        }

        return true;
    }

}
