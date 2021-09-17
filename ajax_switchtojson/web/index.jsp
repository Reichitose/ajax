<%--
  Created by IntelliJ IDEA.
  User: RE1UY
  Date: 2021/9/14
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script>
      function fun1() {
        var xmlHttp  =new XMLHttpRequest();
        xmlHttp.onreadystatechange = function () {
          if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
            var data = xmlHttp.responseText;
            //JavaScript中的eval函数可以将json格式的字符串变为json对象
            var jsonObj = eval("("+data+")");
            alert("部门名称"+jsonObj.dName);

          }
        }
        xmlHttp.open("get","one",true);
        xmlHttp.send();

      }
    </script>
  </head>
  <body>
  <input type="button"value="接收dept类型对象" onclick="fun1()">
  </body>
</html>
