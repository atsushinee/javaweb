package org.ihsusta.java.filter;


import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
@WebFilter(urlPatterns = {"/other.jsp"},
        initParams = {@WebInitParam(name = "count",value = "5000")})
public class CountFilter implements javax.servlet.Filter{

    private int count;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String param = filterConfig.getInitParameter("count");
        count = Integer.valueOf(param);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        count++;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        ServletContext context = request.getSession().getServletContext();
        context.setAttribute("count",count);
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
