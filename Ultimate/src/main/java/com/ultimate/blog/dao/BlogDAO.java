package com.ultimate.blog.dao;

import java.util.List;

import com.ultimate.core.entity.BlogArticle;
import com.ultimate.core.entity.BlogCategory;
import com.ultimate.core.exceptions.RecordsNotFoundException;

public interface BlogDAO {
	
	List<BlogCategory> getAllBlogCategory()throws RecordsNotFoundException;
	
	List<BlogArticle>  getAllBlogArticles()throws RecordsNotFoundException;
	
	BlogArticle getBlogContent(String alias)throws RecordsNotFoundException;
	
	boolean updateBlogContent(String alias, String content)throws RecordsNotFoundException;

}
