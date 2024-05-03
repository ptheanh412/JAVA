package com.homestayweb.controller.web;

import com.homestayweb.model.CategoryModel;
import com.homestayweb.model.RoomModel;
import com.homestayweb.service.ICategoryService;
import com.homestayweb.service.IRoomService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/room-detail")
public class RoomDetailController extends HttpServlet {
    @Inject
    IRoomService roomService;
    @Inject
    ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomId = request.getParameter("id");
        request.setAttribute("roomlist", roomService.findOne(Integer.parseInt(roomId)));
        List<CategoryModel> categoryModels = categoryService.findAll();
        request.setAttribute("categories", categoryModels);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/roomdetail.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
