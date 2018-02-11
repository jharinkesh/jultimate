/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.page.dao;

import com.ultimate.core.commons.ResponseService;
import com.ultimate.core.commons.ServerResponse;
import com.ultimate.core.entity.Article;
import com.ultimate.core.entity.Subject;
import com.ultimate.core.entity.Topic;
import com.ultimate.seq.dao.SequenceDao;
import java.util.List;
import javax.inject.Inject;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class PageDAOImpl implements PageDAO {

    @Inject
    private MongoOperations mongoOperations;

    @Inject
    SequenceDao sequenceDao;
    
    @Inject
    ResponseService responseService;

    //Methods of subject
    @Override
    public Subject getSubjectById(Integer subjectId) {
        try {
            return mongoOperations.findOne(new Query(Criteria.where("_id").is(subjectId).and("status").is(true)), Subject.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public List<Subject> getAllActiveSubjects() {
        try {
            return mongoOperations.find(new Query(Criteria.where("status").is(true)), Subject.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public List<Subject> getAllSubjects() {
        try {
            return mongoOperations.findAll(Subject.class);
        } catch (Exception e) {
        }
        return null;

    }

    @Override
    public ServerResponse insertSubject(Subject subject) {

        try {
            Subject sub = mongoOperations.findOne(new Query(Criteria.where("title").is(subject.getTitle())), Subject.class);

            if (sub == null) {
                subject.setId(sequenceDao.getNextSequenceId("subject"));
                mongoOperations.save(subject);
            } else {
                return responseService.getInfoResponse(false, "subject.already.available");
            }

        } catch (Exception e) {
            return responseService.getInfoResponse(false, "error.message");
        }
        return responseService.getInfoResponse(true, "subject.creation.successsful");
    }

    @Override
    public ServerResponse updateSubject(Subject subject) {
        try {
            Subject sub = mongoOperations.findOne(new Query(Criteria.where("_id").is(subject.getId())), Subject.class);

            if (sub != null) {
                mongoOperations.save(subject);
            } else {
                return responseService.getInfoResponse(false, "subject.not.available");
            }

        } catch (Exception e) {
            return responseService.getInfoResponse(false, "error.message");
        }
        return responseService.getInfoResponse(true, "subject.edit.successsful");
    }

    //Methods of topic
    @Override
    public Topic getTopicById(Integer topicId) {
        try {
            return mongoOperations.findOne(new Query(Criteria.where("_id").is(topicId).and("status").is(true)), Topic.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public List<Topic> getAllTopics() {
        try {
            return mongoOperations.findAll(Topic.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public List<Topic> getTopicsBySubjectId(Integer subjectId) {
        try {
            return mongoOperations.find(new Query(Criteria.where("subjectId").is(subjectId).and("status").is(true)), Topic.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public String[] getKeywordsAndDescription(Integer topicId) {
        try {

            Topic topic = mongoOperations.findOne(new Query(Criteria.where("_id").is(topicId).and("status").is(true)), Topic.class);
            String data[] = new String[2];

            data[0] = topic.getKeywords();
            data[1] = topic.getDescription();

            return data;

        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public ServerResponse insertTopic(Topic topic) {
        try {
            Topic top = mongoOperations.findOne(new Query(Criteria.where("title").is(topic.getTitle())), Topic.class);

            if (top == null) {
                topic.setId(sequenceDao.getNextSequenceId("topic"));
                mongoOperations.save(topic);
            } else {
                return responseService.getInfoResponse(false, "topic.already.available");
            }

        } catch (Exception e) {
            return responseService.getInfoResponse(false, "error.message");
        }
        return responseService.getInfoResponse(true, "topic.creation.successsful");
    }

    @Override
    public ServerResponse updateTopic(Topic topic) {
        try {
            Topic top = mongoOperations.findOne(new Query(Criteria.where("_id").is(topic.getId())), Topic.class);

            if (top != null) {
                mongoOperations.save(topic);
            } else {
                return responseService.getInfoResponse(false, "topic.not.available");
            }

        } catch (Exception e) {
            return responseService.getInfoResponse(false, "error.message");
        }
        return responseService.getInfoResponse(true, "topic.edit.successsful");
    }

    //Methods of article
    @Override
    public Article getArticle(String articleAlias) {
        try {
            return mongoOperations.findOne(new Query(Criteria.where("alias").is(articleAlias).and("status").is(true)), Article.class);
        } catch (Exception e) {
            
            System.out.println(e);
        }
        return null;
    }

    @Override
    public List<Article> getAllArticles() {
        try {
            return mongoOperations.findAll(Article.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public List<Article> getArticlesByTopicId(Integer topicId) {
        try {
            return mongoOperations.find(new Query(Criteria.where("topicId").is(topicId).and("status").is(true)), Article.class);
        } catch (Exception e) {
        }
        return null;
    }

    @Override
    public ServerResponse insertArticle(Article article) {
        try {
            Article art = mongoOperations.findOne(new Query(Criteria.where("title").is(article.getTitle())), Article.class);

            if (art == null) {
                article.setId(sequenceDao.getNextSequenceId("article"));
                mongoOperations.save(article);
            } else {
                return responseService.getInfoResponse(false, "article.already.available");
            }

        } catch (Exception e) {
            return responseService.getInfoResponse(false, "error.message");
        }
        return responseService.getInfoResponse(true, "article.creation.successsful");
    }

    @Override
    public ServerResponse updateArticle(Article article) {
        try {
            Article art = mongoOperations.findOne(new Query(Criteria.where("_id").is(article.getId())), Article.class);

            if (art != null) {
                mongoOperations.save(article);
            } else {
                return responseService.getInfoResponse(false, "article.not.available");
            }

        } catch (Exception e) {
            return responseService.getInfoResponse(false, "error.message"+e);
        }
        return responseService.getInfoResponse(true, "article.edit.successsful");
    }

}
