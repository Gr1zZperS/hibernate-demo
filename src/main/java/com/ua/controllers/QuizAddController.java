package com.ua.controllers;

import com.ua.dao.QuizDAO;
import com.ua.entity.Answer;
import com.ua.entity.Question;
import com.ua.util.HibernateUtil;
import org.hibernate.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "QuizAddController", urlPatterns = "/adding")
public class QuizAddController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/jsp/adding.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            // Dangerous - HARDCODED!!!
            QuizDAO dao = new QuizDAO(session);
            Question question = new Question();
            question.setQuestion(req.getParameter("question"));

            List<Answer> answerList = new ArrayList<Answer>();

            Answer answer1 = new Answer();
            answer1.setAnswer(req.getParameter("answer1"));
            answerList.add(answer1);

            Answer answer2 = new Answer();
            answer2.setAnswer(req.getParameter("answer2"));
            answerList.add(answer2);

            Answer answer3 = new Answer();
            answer3.setAnswer(req.getParameter("answer3"));
            answerList.add(answer3);

            Answer answer4 = new Answer();
            answer4.setAnswer(req.getParameter("answer4"));
            answerList.add(answer4);
            
            question.setAnswers(answerList);
            dao.addQuestion(question);
            req.getRequestDispatcher("WEB-INF/jsp/index.jsp").forward(req, resp);
        } finally {
            if(session != null) {
                session.close();
            }
        }
    }

}