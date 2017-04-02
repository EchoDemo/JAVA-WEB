/*
1、getAttribute()表示从request范围取得设置的属性，必须要先用setAttribute()方法设置属性，才能通过getAttribute()方法来取得，设置与获取为相同的对象类型。 

getParameter()方法表示接收参数，参数为页面提交的参数，包括：表单提交的参数、URL重写传的参数等，因此这个方法并没有设置参数的方法(没有setParameter()方法。

而且接收参数返回的不是Object，而是String类型。


2、getAttribute()方法，getParameter()方法，都存在于HttpServletRequest类当中。
*/


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>RequestScopeDemo02</title>
    
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
    <%
       String name=(String)request.getAttribute("name");
       String age=(String)request.getAttribute("age");
       String sex=(String)request.getAttribute("sex");
       out.println("姓名："+name+"<br>");
       out.println("年龄："+age+"<br>");
       out.println("性别："+sex);
    %>
  </body>
</html>
