/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.vo;

import javax.validation.constraints.NotNull;
import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author baba
 */
@Data
public class SubjectVO {

    private Integer order;

    @NotEmpty
    private String title;
    
    @NotNull
    private Boolean status;

}
