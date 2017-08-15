package org.ihsusta.java.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/new")
public class NewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String name = req.getParameter("name");
        System.out.println(name);
        PrintWriter writer = resp.getWriter();
        writer.println("<h1>" + name + "</h1>");
        writer.println("<h1>" + req.getParameter("age") + "</h1>");
        writer.println("<h1>" + "阿三" + "</h1>");
    }
}
