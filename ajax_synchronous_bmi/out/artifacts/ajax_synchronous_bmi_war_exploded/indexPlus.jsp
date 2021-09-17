<%--
  Created by IntelliJ IDEA.
  User: RE1UY
  Date: 2021/9/14
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>全局刷新的bmi</title>
  </head>
  <body>
  <p>全局刷新计算bmi</p>
  <form action="/ajax_synchronous_bmi/bmip" method="get">
    姓名：<input type="text" name="name"><br/>
    体重（kg）：<input type="text" name="weight"><br/>
    身高（m）：<input type="text" name="height"><br/>
    <input type="submit" value="计算">

  </form>
  </body>
</html>
