package com.ultimate.blog.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ultimate.blog.dao.BlogDAO;
import com.ultimate.core.commons.ResponseService;
import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.commons.ULogger;
import com.ultimate.core.entity.BlogArticle;
import com.ultimate.core.entity.BlogCategory;

@Service
public class BlogServiceImpl implements BlogService {

	@Inject
	BlogDAO blogDAO;

	@Inject
	ResponseService responseService;

	@Override
	public ServerResponse getAllCategoryAndArticles() {

		Object response = null;
		boolean status = true;
		List<BlogCategory> categories = null;
		List<BlogArticle> articles = null;

		try {
			categories = blogDAO.getAllBlogCategory();
			articles = blogDAO.getAllBlogArticles();
		} catch (Exception e) {
			status = false;
			ULogger.logError(e);
		}

		if (status) {

			Map<Integer, String> categoryTitles = new HashMap<>();
			for (BlogCategory category : categories) {
				categoryTitles.put(category.getId(), category.getTitle());
			}

			Map<Integer, List<String>> articleMap = new TreeMap<>();
			for (BlogArticle article : articles) {
				if (articleMap.containsKey(article.getCategoryId())) {
					articleMap.get(article.getCategoryId()).add(article.getTitle() + "##" + article.getAlias());
				} else {
					List<String> articleArray = new ArrayList<>();
					articleArray.add(article.getTitle() + "##" + article.getAlias());
					articleMap.put(article.getCategoryId(), articleArray);
				}
			}

			List<Object> resultArray = new ArrayList<>();
			for (BlogCategory blogCat : categories) {
				Map<String, Object> result = new HashMap<>();
				result.put("category_title", categoryTitles.get(blogCat.getId()));
				List<Map<String, String>> articleList = new ArrayList<>();
				List<String> articleString = articleMap.get(blogCat.getId());
				if (articleString != null && !articleString.isEmpty()) {
					for (String articleData : articleString) {
						String[] data = articleData.split("##");
						Map<String, String> dataMap = new HashMap<>();
						dataMap.put("title", data[0]);
						dataMap.put("alias", data[1]);
						articleList.add(dataMap);
					}
				}

				result.put("articles", articleList);
				resultArray.add(result);
			}

			response = resultArray;
		}

		return responseService.getResponse(status, response);
	}

	@Override
	public ServerResponse getBlogContent(String alias) {
		Object response = null;
		boolean status = true;
		if (alias != null && !alias.isEmpty()) {
			BlogArticle article = null;
			try {
				article = blogDAO.getBlogContent(alias);
			} catch (Exception e) {
				status = false;
				ULogger.logError(e);
			}

			if (status) {
				Map<String, Object> data = new HashMap<>();
				data.put("title", article.getTitle());
				data.put("content", article.getContent());
				data.put("keywords", article.getKeywords());
				response = data;
			}
		} else {
			status = false;
			response = "Invalid input";
		}

		return responseService.getResponse(status, response);
	}

	@Override
	public ServerResponse updateBlogContent(String alias, String content) {

		Object response = null;
		boolean status = true;
		if (alias != null && !alias.isEmpty() && content != null && !content.isEmpty()) {
			try {
				if (blogDAO.updateBlogContent(alias, content)) {
					response = "Blog content edited successfuly";
				}
			} catch (Exception e) {
				status = false;
				response = "Error occured";
				ULogger.logError(e);
			}
		} else {
			status = false;
			response = "Invalid input";
		}
		return responseService.getResponse(status, response);
	}

}
