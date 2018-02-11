package com.ultimate.core.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@Document(collection = "BlogArticle")
public class BlogArticle implements Comparable<BlogArticle>{
	
    @Id
    private Integer id;
    private Integer categoryId;
    private Integer order;
    private String alias;
    private String title;
    private String content;
    private String keywords;
    private Boolean status;
    
	@Override
	public int compareTo(BlogArticle o) {
		return this.getOrder() - o.getOrder();
	}

}
