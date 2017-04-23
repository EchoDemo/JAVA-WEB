<%--
exception对象常用方法:

1、getMessage()和getLocalizedMessage()：这两种方法分别返回exception对象的异常消息字符串和本地化语言的异常错误。

2、printStackTrace()：显示异常的栈跟踪轨迹。

3、toString()：返回关于异常错误的简单消息描述。

4、fillInStackTrace()：重写异常错误的栈执行轨迹。

5、getClass():返回异常类型。

注意：
1、在抛出异常的页面的page中加上errorPage="将要跳转的处理页面"。如：
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="exception.jsp"%>

2、在跳转之后的页面的page中要加上isErrorPage = "true"。如：
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage = "true"%>

--%>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage = "true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>exception.jsp</title>
    
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
    <h1>Exception内置对象</h1>
    <hr>
    异常类型是：<%=exception.getClass() %><br>
    异常消息是：<%=exception.getMessage() %><br>
    异常的字符串描述：<%=exception.toString() %><br>
  </body>
</html>
