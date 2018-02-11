/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.dao;

import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.entity.Article;
import com.ultimate.core.entity.Subject;
import com.ultimate.core.entity.Topic;
import java.util.List;

/**
 *
 * @author baba
 */
public interface PageDAO {

    //Methods for subject
    public Subject getSubjectById(Integer subjectId);

    public List<Subject> getAllActiveSubjects();

    public List<Subject> getAllSubjects();

    public ServerResponse insertSubject(Subject subject);

    public ServerResponse updateSubject(Subject subject);

    //Methods for topic
    public Topic getTopicById(Integer topicId);

    public List<Topic> getAllTopics();

    public List<Topic> getTopicsBySubjectId(Integer subjectId);

    public String[] getKeywordsAndDescription(Integer topicId);

    public ServerResponse insertTopic(Topic topic);

    public ServerResponse updateTopic(Topic topic);

    //Methods for article
    public Article getArticle(String articleAlias);

    public List<Article> getAllArticles();

    public List<Article> getArticlesByTopicId(Integer topicId);

    public ServerResponse insertArticle(Article article);

    public ServerResponse updateArticle(Article article);

}
