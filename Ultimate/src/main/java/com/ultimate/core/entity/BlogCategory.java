package com.ultimate.core.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Data;
@Data
@AllArgsConstructor
@Document(collection = "BlogCategory")
public class BlogCategory implements Comparable<BlogCategory>{
	
    @Id
    private Integer id;
    private Integer order;
    private String title;
    private Boolean status;

	@Override
	public int compareTo(BlogCategory o) {
		return this.getOrder() - o.getOrder();
	}
}
