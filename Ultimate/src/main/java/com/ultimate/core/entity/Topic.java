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
@Document(collection = "Topic")
public class Topic {

    @Id
    private Integer id;

    private Integer subjectId;

    private Integer order;

    private String title;

    private String keywords;

    private String description;

    private Boolean status;

}
