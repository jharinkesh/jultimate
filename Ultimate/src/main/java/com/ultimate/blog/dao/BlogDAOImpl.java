package com.ultimate.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.ultimate.core.entity.BlogArticle;
import com.ultimate.core.entity.BlogCategory;
import com.ultimate.core.exceptions.RecordsNotFoundException;

@Repository
public class BlogDAOImpl implements BlogDAO{
	
    @Inject
    private MongoOperations mongoOperations;
    
	@Override
	public List<BlogCategory> getAllBlogCategory() throws RecordsNotFoundException {
		Query query = new Query(Criteria.where("status").is(true));
		query.with(new Sort(Sort.Direction.ASC, "order"));
		List<BlogCategory> list = mongoOperations.find(query, BlogCategory.class);
		if(list == null || list.isEmpty()){
			throw new RecordsNotFoundException("No records found for all BlogCategory");
		}		
		return list;
	}

	@Override
	public List<BlogArticle> getAllBlogArticles() throws RecordsNotFoundException {
		Query query = new Query(Criteria.where("status").is(true));
		query.with(new Sort(Sort.Direction.ASC, "order"));
		List<BlogArticle> list = mongoOperations.find(query, BlogArticle.class);
		if(list == null || list.isEmpty()){
			throw new RecordsNotFoundException("No records found for all BlogArticle");
		}
		return list;
	}

	@Override
	public BlogArticle getBlogContent(String alias) throws RecordsNotFoundException {
		BlogArticle article = mongoOperations.findOne(new Query(Criteria.where("alias").is(alias).and("status").is(true)), BlogArticle.class);
		if(article == null){
			throw new RecordsNotFoundException("No records found for Blog article : "+alias);
		}
		return article;
	}

	@Override
	public boolean updateBlogContent(String alias, String content) throws RecordsNotFoundException {
		BlogArticle articleFromDB = getBlogContent(alias);
		articleFromDB.setContent(content);
		mongoOperations.save(articleFromDB);
		return true;
	}

}
