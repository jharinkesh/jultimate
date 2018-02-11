package com.ultimate.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ultimate.blog.utils.BlogConstants;

@Controller
@RequestMapping(BlogConstants.BLOG_PARENT)
public class BlogController {

	@RequestMapping(value = BlogConstants.BLOG_TEMPLATE, method = RequestMethod.GET)
	public String getListPage() {
		return "blog/blog_list";
	}
	
	@RequestMapping(value = BlogConstants.BLOG_MAIN_PAGE, method = RequestMethod.GET)
	public String getMainPage() {
		return "blog/blog";
	}

	@RequestMapping(value = BlogConstants.BLOG_CONTENT, method = RequestMethod.GET)
	public String getContentPage(@PathVariable("alias") String alias, ModelMap model) {		
		model.addAttribute("alias", alias);
		return "blog/blog_content";
	}
}
