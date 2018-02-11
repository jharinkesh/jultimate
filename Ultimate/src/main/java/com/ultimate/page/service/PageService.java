/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.service;

import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.entity.Article;
import com.ultimate.core.entity.Subject;
import com.ultimate.core.entity.Topic;
import java.util.List;

/**
 *
 * @author baba
 */
public interface PageService {

    //Methods for subjects
    public Subject getSubjectById(Integer subjectId);

    public List<Subject> getAllActiveSubjects();

    public List<Subject> getAllSubjects();

    public String[] getSubjectNames();

    public ServerResponse addSubject(Subject subject);

    public ServerResponse editSubject(Subject subject);

    //Methods for topics
    public Topic getTopicById(Integer topicId);

    public List<Topic> getAllTopics();

    public List<Topic> getTopicsBySubjectId(Integer subjectId);

    public String[] getKeywordsAndDescription(Integer topicId);

    public ServerResponse addTopic(Topic topic);

    public ServerResponse editTopic(Topic topic);

    //Methods for article
    public Article getArticle(String articleAlias);

    public List<Article> getAllArticles();

    public List<Article> getArticlesByTopicId(Integer topicId);

    public ServerResponse addArticle(Article article);

    public ServerResponse editArticle(Article article);

}
