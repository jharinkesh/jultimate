/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.rest.controller;

import com.ultimate.core.commons.MessageProvider;
import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.entity.Article;
import com.ultimate.page.service.PageService;
import com.ultimate.page.util.PageConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author baba
 */
@RestController
@RequestMapping(PageConstants.REST_PREFIX)
public class PageRestController {

    @Inject
    PageService pageService;

    @Inject
    MessageProvider messageProvider;

    @RequestMapping(value = PageConstants.ARTICLE_CONTENT, method = RequestMethod.POST, consumes = "application/json")
    ServerResponse getArticleContent(@RequestBody String alias, BindingResult result) {

        System.out.println("getArticleContent:" + alias);

        Article article = pageService.getArticle(alias);

        if (article == null) {
            return new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
        }

        Map<String, Object> data = new HashMap<>();

        data.put("topic_title", pageService.getTopicById(article.getTopicId()).getTitle());
        
        data.put("content", article.getContent());

        data.put("select_article_title", article.getTitle());

        List<Map> articles = new ArrayList<>();

        for (Article article1 : pageService.getArticlesByTopicId(article.getTopicId())) {

            Map<String, String> articleMap = new HashMap<>();

            articleMap.put("article_title", article1.getTitle());
            articleMap.put("article_alias", article1.getAlias());
            articles.add(articleMap);
        }

        data.put("articles", articles);

        return new ServerResponse(ServerResponse.OK, data);

    }

}
