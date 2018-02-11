/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.account.util;

public interface AccountConstants {

    //Constants for web controller
    public static final String WEB_PREFIX = "/account/";

    public static final String REGISTRATION_FORM = "/registrationform";

    public static final String ACTIVATION = "/activation/{token}";

    //Constants for rest controller
    public static final String REST_PREFIX = "/account_service";

    public static final String REGISTRATION = "/registration";

    public static final String SUBSCRIPTION = "/subscription";

    /*---------------------------code added by uds -------------------------------------*/
    public static final String CONTACT = "/contact";

}
