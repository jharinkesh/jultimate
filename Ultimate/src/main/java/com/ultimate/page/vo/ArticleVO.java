/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.vo;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author baba
 */
@Data
public class ArticleVO {
    
    private Integer topicId;
    
    private Integer subjectId;
    
    private Integer order;
    
    @NotEmpty
    private String alias;
    
    private String title;
    
    private String content;
    
    private Boolean status;
        
}
