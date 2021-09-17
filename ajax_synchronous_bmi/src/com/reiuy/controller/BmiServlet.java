package com.reiuy.controller;

import java.io.IOException;

public class BmiServlet extends jakarta.servlet.http.HttpServlet {
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

    }

    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        //1.接收请求参数
        String name = request.getParameter("name");
        String weight = request.getParameter("weight");
        String height = request.getParameter("height");

        //2.计算bmi 体重/身高平方
        float h = Float.valueOf(height);
        float w = Float.valueOf(weight);
        float bmi = w / (h * h);

        //判断bmi范围
        String msg = "";
        if(bmi<=18.5){
            msg = "您属于较瘦...";
        }else if (bmi>18.5 && bmi<=23.9){
            msg = "您的bmi是标准的...";
        }else if (bmi>23.9) {
            msg = "您的身体过重...";
        }
        System.out.println("msg = "+msg);
        msg = name+"您好，您的bmi："+bmi+","+msg;

        //将数据存入request
        request.setAttribute("msg",msg);
        //转发到新页面
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }
}
