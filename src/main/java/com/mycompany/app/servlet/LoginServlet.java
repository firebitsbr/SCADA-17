package com.mycompany.app.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Created by siege on 2016-06-20.
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("username");
        String password=request.getParameter("password");
        if ("atjqz".equals(name)&&"000000".equals(password)) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/pages/anting.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}