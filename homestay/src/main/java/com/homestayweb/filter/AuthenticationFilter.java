package com.homestayweb.filter;

import com.homestayweb.utils.SessionUtil;
import com.homestayweb.model.UserModel;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthenticationFilter implements Filter {
    private ServletContext context;


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();

        UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");

        // Kiểm tra xem người dùng đã đăng nhập chưa
        if (userModel == null) {
            response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");
        } else {
            chain.doFilter(servletRequest, servletResponse);
        }
    }
    public static boolean authenticate(String username, String password) {
        // Thực hiện xác minh thông tin đăng nhập ở đây
        // Ví dụ: so sánh thông tin người dùng với cơ sở dữ liệu hoặc bất kỳ cách xác minh nào khác

        // Trong trường hợp ví dụ, ta sẽ giả sử thông tin đăng nhập thành công nếu username và password không rỗng
        return !username.isEmpty() && !password.isEmpty();
    }

    @Override
    public void destroy() {

    }
}
