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
import com.ultimate.page.dao.PageDAO;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

/**
 *
 * @author baba
 */
@Service
public class PageServiceImpl implements PageService {

    @Inject
    PageDAO pageDao;

    //Methods for subjects
    @Override
    public Subject getSubjectById(Integer subjectId) {
        return pageDao.getSubjectById(subjectId);
    }

    @Override
    public List<Subject> getAllActiveSubjects() {
        return pageDao.getAllActiveSubjects();
    }

    @Override
    public List<Subject> getAllSubjects() {
        return pageDao.getAllSubjects();
    }

    @Override
    public String[] getSubjectNames() {
        String[] subjectNames = {"/article/{alias}"};

        List<Subject> allSubject = pageDao.getAllActiveSubjects();

        if (!allSubject.isEmpty()) {
            subjectNames = new String[allSubject.size()];
            int i = 0;
            for (Subject subject : allSubject) {
                subjectNames[i++] = subject.getTitle().replace(" ", "_").toLowerCase();
            }
        }

        return subjectNames;
    }

    @Override
    public ServerResponse addSubject(Subject subject) {
        return pageDao.insertSubject(subject);
    }

    @Override
    public ServerResponse editSubject(Subject subject) {
        return pageDao.updateSubject(subject);
    }

    //Methods for topics
    @Override
    public Topic getTopicById(Integer topicId) {
        return pageDao.getTopicById(topicId);
    }

    @Override
    public List<Topic> getAllTopics() {
        return pageDao.getAllTopics();
    }

    @Override
    public List<Topic> getTopicsBySubjectId(Integer subjectId) {
        return pageDao.getTopicsBySubjectId(subjectId);
    }

    @Override
    public String[] getKeywordsAndDescription(Integer topicId) {
        return pageDao.getKeywordsAndDescription(topicId);
    }

    @Override
    public ServerResponse addTopic(Topic topic) {
        return pageDao.insertTopic(topic);
    }

    @Override
    public ServerResponse editTopic(Topic topic) {
        return pageDao.updateTopic(topic);
    }

    //Methods for article
    @Override
    public Article getArticle(String articleAlias) {
        return pageDao.getArticle(articleAlias);
    }

    @Override
    public List<Article> getAllArticles() {
        return pageDao.getAllArticles();
    }

    @Override
    public List<Article> getArticlesByTopicId(Integer topicId) {
        return pageDao.getArticlesByTopicId(topicId);
    }

    @Override
    public ServerResponse addArticle(Article article) {
        return pageDao.insertArticle(article);
    }

    @Override
    public ServerResponse editArticle(Article article) {
        return pageDao.updateArticle(article);
    }

}
