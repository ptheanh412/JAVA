package com.homestayweb.controller.web;

import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homestayweb.model.CategoryModel;
import com.homestayweb.model.RoomModel;
import com.homestayweb.service.ICategoryService;
import com.homestayweb.service.IRoomService;
import com.homestayweb.service.IUserService;
import com.homestayweb.utils.FormUtil;
import com.homestayweb.utils.SessionUtil;
import com.homestayweb.model.UserModel;

@WebServlet(urlPatterns = {"/trang-chu", "/dang-nhap", "/thoat"})
public class HomeController extends HttpServlet {
	@Inject
	private ICategoryService categoryService;
	@Inject
	private IUserService userService;
	@Inject
	private IRoomService roomService;

	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("login")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}else if (action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath() + "/trang-chu");
		}else {
			List<CategoryModel> categoryModels = categoryService.findAll();
			request.setAttribute("categories", categoryModels);
			List<RoomModel> trendRoom = roomService.findRoomTrend();
			request.setAttribute("trendyroom", trendRoom);
			List<RoomModel> popularRoom = roomService.findRoomPopular();
			request.setAttribute("popularroom", popularRoom);
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.findByUserNameAndPassword(model.getUserName(), model.getPassword());
			if (model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if (model.getRole().getCode().equals("USER")) {
					response.sendRedirect(request.getContextPath()+"/trang-chu");
				} else if (model.getRole().getCode().equals("ADMIN")) {
					response.sendRedirect(request.getContextPath()+"/admin-home");
				}
			} else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=username_password_invalid&alert=danger");
			}
		}
	}
}
