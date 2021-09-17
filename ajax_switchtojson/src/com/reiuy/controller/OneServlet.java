package com.reiuy.controller;

import java.io.IOException;

public class OneServlet extends jakarta.servlet.http.HttpServlet {
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

    }

    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        String jsonStr = "{\"deptNo\":10,\"dName\":\"金融事业部\",\"loc\":\"上海\"}";
        response.setCharacterEncoding("utf-8");
        response.getWriter().write(jsonStr);
    }
}
