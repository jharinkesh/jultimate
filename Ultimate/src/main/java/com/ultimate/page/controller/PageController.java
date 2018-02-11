/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.controller;

import com.ultimate.core.entity.Article;
import com.ultimate.page.service.PageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ultimate.page.util.PageConstants;
import javax.inject.Inject;
import org.springframework.ui.ModelMap;

@Controller
public class PageController {

    @Inject
    PageService pageService;
    
    @RequestMapping(value = PageConstants.PAGE_TEMPLATE, method = RequestMethod.GET)
    public String getContentPage() {
        return "page/content";
    }

    @RequestMapping(value = PageConstants.PAGE_ARTICLE_ALIAS, method = RequestMethod.GET)
    public String getSubjectPage(@PathVariable("alias") String alias, ModelMap model) {

        System.out.println("getSubjectPage: " + alias);

        Article article = pageService.getArticle(alias);

        if (article == null) {
            return null;
        }

        String data[] = pageService.getKeywordsAndDescription(article.getTopicId());

        model.addAttribute("keywords", data[0]);
        model.addAttribute("description", article.getTitle() + " - " + data[1]);
        model.addAttribute("title", article.getTitle());
        model.addAttribute("alias", alias);

        return "page/page";
    }

}
