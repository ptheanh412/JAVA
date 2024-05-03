package com.homestayweb.controller.web;

import com.homestayweb.model.UserModel;
import com.homestayweb.service.imp.UserService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/dang-ky")
public class SignupController extends HttpServlet {
    @Inject
    UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/signup.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        UserModel newUser = new UserModel();
        newUser.setUserName(username);
        newUser.setPassword(password);
        newUser.setEmail(email);
        newUser.setPhone(phone);
        userService.save(newUser);
        response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login");
    }
}

