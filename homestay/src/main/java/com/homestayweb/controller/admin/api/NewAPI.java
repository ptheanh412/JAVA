package com.homestayweb.controller.admin.api;

import com.homestayweb.service.IRoomService;
import com.homestayweb.utils.HttpUtil;
import com.homestayweb.utils.SessionUtil;
import com.homestayweb.model.RoomModel;
import com.homestayweb.model.UserModel;
import org.codehaus.jackson.map.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api-admin-room")
public class NewAPI extends HttpServlet {
    @Inject
    private IRoomService roomService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        RoomModel roomModel = HttpUtil.of(request.getReader()).toModel(RoomModel.class);
        roomModel.setCreatedBy(((UserModel)SessionUtil.getInstance().getValue(request,"USERMODEL")).getUserName());
        roomModel = roomService.save(roomModel);
        mapper.writeValue(response.getOutputStream(),roomModel);
    }
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        try {
            ObjectMapper mapper = new ObjectMapper();
            request.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            RoomModel updateRoom = HttpUtil.of(request.getReader()).toModel(RoomModel.class);
            updateRoom.setModifiedBy(((UserModel)SessionUtil.getInstance().getValue(request,"USERMODEL")).getUserName());
            updateRoom = roomService.update((updateRoom));
            mapper.writeValue(response.getOutputStream(), updateRoom);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        RoomModel roomModel = HttpUtil.of(request.getReader()).toModel(RoomModel.class);
        roomService.delete(roomModel.getIds());
        mapper.writeValue(response.getOutputStream(),"{}");
    }
}
