package com.ua.controllers;

import com.ua.dao.QuizDAO;
import com.ua.entity.Question;
import com.ua.util.HibernateUtil;
import org.hibernate.Session;
import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name="QuizStackController", urlPatterns="/start")
public class QuizStackController extends HttpServlet {

    private Session session;
    private QuizDAO dao;
    private List<Question> questions;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            dao = new QuizDAO(session);
            questions = dao.getQuestionList();
            req.setAttribute("questions", questions);
            req.getRequestDispatcher("WEB-INF/jsp/start.jsp").forward(req, resp);
        } finally {
            if(session != null) {
                session.close();
            }
        }
    }

}