/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.commons;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 *
 * @author baba
 */
@AllArgsConstructor
public @Data
class ServerResponse {

    public static final String OK = "OK";
    public static final String FAIL = "FAIL";
    private String status = FAIL;
    private String message = FAIL;
    private Object result = FAIL;

    public ServerResponse(String status,Object result){
    	this.status = status;
    	this.result = result;
    }
}
