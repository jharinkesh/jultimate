/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.commons;

import static com.ultimate.core.commons.ServerResponse.FAIL;
import static com.ultimate.core.commons.ServerResponse.OK;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

/**
 *
 * @author baba
 */
@Service
public class ResponseService {
    
    
    @Inject
    MessageProvider messageProvider;
    
    
    public ServerResponse getInfoResponse(boolean status,String messageString){
        return new ServerResponse(status?OK:FAIL, messageProvider.getMessage(messageString));
    }
    
    public ServerResponse getDataResponse(boolean status,Object result){
        return new ServerResponse(status?OK:FAIL, result);
    }
    
    public ServerResponse getResponse(boolean status, Object result){
    	return status?getDataResponse(status,result):getInfoResponse(status,result.toString());
    }
      
}
