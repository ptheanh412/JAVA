package com.homestayweb.controller.admin;

import com.homestayweb.constant.SystemConstant;
import com.homestayweb.paging.PageRequest;
import com.homestayweb.paging.Pageble;
import com.homestayweb.service.ICategoryService;
import com.homestayweb.service.IRoomService;
import com.homestayweb.sort.Sorter;
import com.homestayweb.utils.FormUtil;
import com.homestayweb.model.RoomModel;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.homestayweb.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-room"})
public class RoomController extends HttpServlet {
    @Inject
    private IRoomService roomService;

    @Inject
    private ICategoryService categoryService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoomModel roomModel = FormUtil.toModel(RoomModel.class, request);
//        roomModel.setListResult(roomService.findAllRoom());
        String view="";
        if(roomModel.getType().equals(SystemConstant.LIST)){
            Pageble pageble = new PageRequest(roomModel.getPage(), roomModel.getMaxPageItem(),
                    new Sorter(roomModel.getSortName(), roomModel.getSortBy()));
            roomModel.setListResult(roomService.findAll(pageble));
            roomModel.setTotalItem(roomService.getTotalItem());
            roomModel.setTotalPage((int) Math.ceil((double) roomModel.getTotalItem() / roomModel.getMaxPageItem()));
            view = "/views/admin/room/list.jsp";
        } else if (roomModel.getType().equals(SystemConstant.EDIT)) {
            if(roomModel.getId() != null ) {
                roomModel = roomService.findOne(roomModel.getId());
            }
            request.setAttribute("categories", categoryService.findAll());
            view="/views/admin/room/edit.jsp";
        }
        MessageUtil.showMessage(request);
        request.setAttribute(SystemConstant.MODEL, roomModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
