/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Data
@AllArgsConstructor
@Document(collection = "Article")
public class Article {
    
    @Id
    private Integer id;
    
    private Integer topicId;
    
    private Integer subjectId;
    
    private Integer order;
        
    private String alias;
    
    private String title;
    
    private String content;
    
    private Boolean status;
   
}
