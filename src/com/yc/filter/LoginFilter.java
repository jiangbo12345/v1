
package com.yc.filter;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

public class LoginFilter implements Filter {

    @Override
    public void destroy() {}

    private boolean needLogin(HttpServletRequest request) {
        String uri = request.getRequestURI();
        if (uri.endsWith("myoffice") || uri.endsWith("setUpShop") ) {
            return true;
        }

        if (uri.contains("static") || uri.equals(request.getContextPath() +"/")) {
            return false;
        }
        return true;
    }

    private String getLoginUri(HttpServletRequest request) {
        return request.getContextPath() + "/";
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse rsp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpSession session = request.getSession();
        if (session.getAttribute("loginUser") == null && needLogin(request)) {
            HttpServletResponse response = (HttpServletResponse) rsp;
            System.out.println("jiangbo==========="+getLoginUri(request)+"user/login");
            response.sendRedirect(request.getContextPath()+"/user/login");
            return;
        }
        chain.doFilter(req, rsp);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

}
