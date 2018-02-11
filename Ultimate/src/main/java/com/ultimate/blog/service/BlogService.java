package com.ultimate.blog.service;

import com.ultimate.core.commons.ServerResponse;

public interface BlogService {
	
	public ServerResponse getAllCategoryAndArticles();
	
	public ServerResponse getBlogContent(String alias);
	
	public ServerResponse updateBlogContent(String alias, String content);

}
