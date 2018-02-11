/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.admin.rest.controller;

import com.ultimate.admin.util.AdminConstants;
import com.ultimate.blog.service.BlogService;
import com.ultimate.core.commons.MessageProvider;
import com.ultimate.core.commons.ResponseService;
import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.entity.Article;
import com.ultimate.core.entity.Subject;
import com.ultimate.core.entity.Topic;
import com.ultimate.page.service.PageService;
import com.ultimate.page.vo.ArticleVO;
import com.ultimate.page.vo.SubjectVO;
import com.ultimate.page.vo.TopicVO;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.validation.Valid;
import org.springframework.security.access.annotation.Secured;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(AdminConstants.REST_PREFIX)
@Secured("ROLE_ADMIN")
public class AdminRestController {

    @Inject
    PageService pageService;
    
	@Inject
	BlogService blogService;

    @Inject
    MessageProvider messageProvider;

    @Inject
    ResponseService responseService;

    @RequestMapping(value = AdminConstants.ARTICLE_CONTENT_EDIT, method = RequestMethod.POST)
    ServerResponse editArticleContent(@RequestBody @Valid ArticleVO articleform, BindingResult result) {

        System.out.println("editArticleContent:- " + articleform.getAlias());

        if (!(result.hasErrors() || articleform.getAlias() == null || articleform.getContent() == null)) {

            Article article = pageService.getArticle(articleform.getAlias());

            if (!(article == null)) {

                article.setContent(articleform.getContent());

                return pageService.editArticle(article);
            }
        }

        return new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));

    }
     
    @RequestMapping(value = AdminConstants.BLOG_CONTENT_EDIT, method = RequestMethod.POST)
    ServerResponse editBlogContent(@RequestBody @Valid ArticleVO articleform) {
        return blogService.updateBlogContent(articleform.getAlias(), articleform.getContent());
    }

    @RequestMapping(value = AdminConstants.LIST_ALL_SUBJECTS, method = RequestMethod.POST)
    ServerResponse getAllSubjects() {
        List<Subject> subjects = pageService.getAllSubjects();

        if (subjects != null) {
            return new ServerResponse(ServerResponse.OK, subjects);

        }

        return new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));

    }

    @RequestMapping(value = AdminConstants.LIST_ALL_TOPICS, method = RequestMethod.POST)
    ServerResponse getAllTopics() {
        List<Topic> topics = pageService.getAllTopics();

        if (topics == null) {
            return new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
        }

        List<Subject> subjects = pageService.getAllSubjects();
        Map<Integer, String> subjectMap = new HashMap<>();
        for (Subject subject : subjects) {
            subjectMap.put(subject.getId(), subject.getTitle());
        }

        List<Map> topicsList = new ArrayList<>();

        for (Topic topic : topics) {
            Map<String, Object> smap = new HashMap<>();

            smap.put("id", topic.getId());
            smap.put("order", topic.getOrder());
            smap.put("subjectId", topic.getSubjectId());
            smap.put("title", topic.getTitle());
            smap.put("status", topic.getStatus());

            smap.put("subjectName", subjectMap.get(topic.getSubjectId()));

            topicsList.add(smap);
        }

        return new ServerResponse(ServerResponse.OK, topicsList);
    }

    @RequestMapping(value = AdminConstants.LIST_ALL_ARTICLES, method = RequestMethod.POST)
    ServerResponse getAllArticles() {
        List<Article> articles = pageService.getAllArticles();

        if (articles == null) {
            return new ServerResponse(ServerResponse.FAIL, messageProvider.getMessage("error.message"));
        }

        List<Subject> subjects = pageService.getAllSubjects();
        Map<Integer, String> subjectMap = new HashMap<>();
        for (Subject subject : subjects) {
            subjectMap.put(subject.getId(), subject.getTitle());
        }

        List<Topic> topics = pageService.getAllTopics();
        Map<Integer, String> topicMap = new HashMap<>();
        for (Topic topic : topics) {
            topicMap.put(topic.getId(), topic.getTitle());
        }

        List<Map> artilcesList = new ArrayList<>();

        for (Article article : articles) {
            Map<String, Object> amap = new HashMap<>();

            amap.put("id", article.getId());
            amap.put("order", article.getOrder());
            amap.put("topicId", article.getTopicId());
            amap.put("subjectId", article.getSubjectId());
            amap.put("title", article.getTitle());
            amap.put("alias", article.getAlias());
            amap.put("status", article.getStatus());

            amap.put("topicName", topicMap.get(article.getTopicId()));
            amap.put("subjectName", subjectMap.get(article.getSubjectId()));

            artilcesList.add(amap);
        }
        return new ServerResponse(ServerResponse.OK, artilcesList);
    }

    @RequestMapping(value = AdminConstants.SUBJECT_ADD, method = RequestMethod.POST)
    ServerResponse addSubject(@RequestBody @Valid SubjectVO subjectform, BindingResult result) {

        System.out.println("addSubject:- " + subjectform);

        if (!(result.hasErrors())) {
            return pageService.addSubject(new Subject(0, subjectform.getOrder(), subjectform.getTitle(), subjectform.getStatus()));
        }

        return responseService.getInfoResponse(false, "error.message");
    }

    @RequestMapping(value = AdminConstants.TOPIC_ADD, method = RequestMethod.POST)
    ServerResponse addTopic(@RequestBody @Valid TopicVO topicform, BindingResult result) {

        System.out.println("addTopic:- " + topicform);

        if (!(result.hasErrors())) {
            return pageService.addTopic(new Topic(0, topicform.getSubjectId(),
                    topicform.getOrder(), topicform.getTitle(), topicform.getKeywords(),
                    topicform.getDescription(), topicform.getStatus()));
        }

        return responseService.getInfoResponse(false, "error.message");
    }
    
    @RequestMapping(value = AdminConstants.ARTICLE_ADD, method = RequestMethod.POST)
    ServerResponse addArticle(@RequestBody @Valid ArticleVO articleform, BindingResult result) {

        System.out.println("addArticle:- " + articleform);

        if (!(result.hasErrors())) {
            return pageService.addArticle(new Article(0,articleform.getTopicId(),
            articleform.getSubjectId(),articleform.getOrder(),
            articleform.getAlias(),articleform.getTitle(),
            articleform.getContent(),articleform.getStatus()));
        }

        return responseService.getInfoResponse(false, "error.message");
    }

}
