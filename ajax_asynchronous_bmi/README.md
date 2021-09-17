# 什么是ajax
Asynchronous JavaScript and XML

异步的javascript和XML


# 核心
局部刷新所采用的核心对象是异步对象 XMLHttpRequest

这个异步对象是存在于浏览器内存中，通常使用JavaScript语法创建和使用XMLHttpRequest对象



# 作用
用来实现局部刷新，通过只刷新页面中少量的内容完成网络数据传输量少，用户感受好的服务

# 实现方式
JavaScript负责创建异步对象，发送请求，更新页面的dom对象

XML负责传输的数据格式，现在被json替代


# 使用ajax中的局部刷新

## 1.新建jsp并使用XMLHttpRequest异步对象
### 使用异步对象有四个步骤
#### 1.创建异步对象
    var xmlHttp = new XMLHttpRequest();
    
    
#### 2.绑定事件
    关于onreadystatechange：
    当异步对象的状态readyState发生变化时就会触发这个事件
    这个事件需要被指定一个函数，在函数中处理状态的变化
    
    xmlHttp.onreadystatechange = funtion(){
        //处理请求的状态变化
    }
    
    
    关于异步对象的属性readyState
    表示异步对象请求的状态变化
    该属性有五个值，分别为：
    0：创建异步对象时
    1：初始化异步请求对象
    2：发送请求
    3：从服务器接收了数据，但只是内部使用，并没有解析
    4：异步请求对象已经将数据解析完毕 此时才可以读取数据
    
    
    
    关于status属性
    与异步对象请求的服务器状态码是一个东西
    例如200，404
    
    
    
#### 3.初始请求
    方法.open(method,url,async)
    method 请求的类型get/post
    url 服务器的servlet地址
    async true表示异步，false表示同步
    
    

#### 4.发送请求
    方法.send()



## 2.创建服务器的Servlet，接收并处理数据，把数据输出给异步对象
接收有两个属性，分别是


responseTest  获得字符串类型的相应数据


responseXML   获得xml形式的相应数据


