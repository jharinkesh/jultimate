package com.ultimate.blog.rest.controller;

import javax.inject.Inject;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ultimate.blog.service.BlogService;
import com.ultimate.blog.utils.BlogConstants;
import com.ultimate.core.commons.ServerResponse;

@RestController
@RequestMapping(BlogConstants.BLOG_SERVICE)
public class BlogRestController implements BlogConstants{
	
	@Inject
	BlogService blogService;
	
	@RequestMapping(value = BLOG_LIST, method = RequestMethod.POST, consumes = "application/json")
    ServerResponse getArticleList() {
		return blogService.getAllCategoryAndArticles();
	}
	
	@RequestMapping(value = BLOG_CONTENT_SERVICE, method = RequestMethod.POST, consumes = "application/json")
    ServerResponse getArticleContent(@RequestBody String alias, BindingResult result) {		
		return blogService.getBlogContent(alias);
	}


}
