<%--
page对象是指向当前jsp页面本身，有点像类中的this指针，它是java.lang.Object类的实例，常用方法如下：

1、class getClass() 返回此Object类

2、int hashCode() 返回此Object的hash码

3、boolean equals(Object obj)判断此Object是否与指针中Object对象相等

4、void copy(Object obj)把此Object拷贝到指定的Object对象中

5、Object clone() 克隆此Object对象

6、String toString() 把此Object转换成String类的对象

7、void notify() 唤醒一个等待的对象

8、void notifyAll() 唤醒所有等待的对象

9、void wait(int timeout) 使一个线程等待直到timeout结束或者被唤醒

10、void wait() 使一个线程处于等待直到被唤醒
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<h1>page内置对象</h1><br>
  	<hr>
    返回此Object类：<%=page.getClass() %><br>
    返回此Object的hash码：<%=page.hashCode() %><br>
    把此Object转换成String类的对象：<%=page.toString() %>
  </body>
</html>
