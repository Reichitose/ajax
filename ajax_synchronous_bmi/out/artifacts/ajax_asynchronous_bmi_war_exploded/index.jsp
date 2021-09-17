<%--
  Created by IntelliJ IDEA.
  User: RE1UY
  Date: 2021/9/14
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>局部刷新</title>
    <script type="text/javascript">

      function doAjax() {
        //使用内存中的异步对象，代替浏览器发起请求，异步对象使用js进行创建和管理

        //1.创建异步对象
        var xmlHttp = new XMLHttpRequest();
        //2.绑定事件
        xmlHttp.onreadystatechange = function () {
          //alert("readyState值为"+xmlHttp.readyState)
          //处理服务器端返回的数据 用以更新页面

          if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
            //alert(xmlHttp.responseText);
            var data = xmlHttp.responseText;
            //更新dom，用来更新页面数据
            document.getElementById("dataloading").innerText = data;
          }
          //如果请求成功，则获取响应包中的数据，即msg


        }
        //3.初始请求数据
        //获取dom对象的value属性值
        var name = document.getElementById("name").value;
        var weight = document.getElementById("weight").value;
        var height = document.getElementById("height").value;

        var param = "name="+name+"&weight="+weight+"&height="+height;
        alert("param = "+param);
        xmlHttp.open("get","bmi?"+param,true);
        //通过拼接字符串传递值
        //4.发起请求
        xmlHttp.send();
      }
    </script>
  </head>
  <body>
  <p>局部刷新-计算bmi</p>
  <div>
    姓名：<input type="text" id = "name"/><br/>
    体重（kg）：<input type="text" id = "weight"/><br/>
    身高（m）：<input type="text" id = "height"/><br/>
    <input type="button" value="计算" onclick="doAjax()">
    <!--此处因为使用局部刷新，使用按钮，不使用表单的提交-->

    <br/>
    <br/>
    <div id="dataloading">等待加载数据....</div>
  </div>
  </body>
</html>
