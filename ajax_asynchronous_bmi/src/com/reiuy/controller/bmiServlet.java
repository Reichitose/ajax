package com.reiuy.controller;

import java.io.IOException;
import java.io.PrintWriter;

public class bmiServlet extends jakarta.servlet.http.HttpServlet {
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

    }

    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        System.out.println("接收到ajax局部刷新请求");
        //1.接收参数
        String name = request.getParameter("name");
        String weight = request.getParameter("weight");
        String height = request.getParameter("height");
        //2.计算bmi 体重/身高平方
        float h = Float.valueOf(height);
        float w = Float.valueOf(weight);
        float bmi = w / (h * h);

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


        //响应ajax需要的数据，使用HttpServletresponse输出数据
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(msg);
        out.flush();
        out.close();

    }
}
