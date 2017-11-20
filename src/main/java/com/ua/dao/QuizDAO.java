package com.ua.dao;

import com.ua.entity.Question;
import org.hibernate.*;
import org.hibernate.query.Query;
import java.util.List;

public class QuizDAO {

    private Session session;
    private List<Question> questionList;
    private Transaction transaction;
    private Query query;

    public QuizDAO(Session session) {
        this.session = session;
    }

    public void addQuestion(Question question) {
        try {
            transaction = session.beginTransaction();
            session.save(question);
            transaction.commit();
        } catch (HibernateException ex) {
            ex.printStackTrace();
            transaction.rollback();
        }
    }

    public List<Question> getQuestionList() {
        try {
            query = session.createQuery("select q from Question q");
            questionList = (List<Question>) query.getResultList();
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return questionList;
    }

    public void updateQuestion(Question question) {
        try {
            transaction = session.beginTransaction();
            session.update(question);
            transaction.commit();
        } catch (HibernateException ex) {
            ex.printStackTrace();
            transaction.rollback();
        }
    }
        
    public void deleteQuestion(Question question) {
        try {
            transaction = session.beginTransaction();
            session.delete(question);
            transaction.commit();
        } catch (HibernateException ex) {
            ex.printStackTrace();
            transaction.rollback();
        }
    }

}