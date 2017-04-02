/*
设置属性,不同页面间传值使用request.setAttribute(position, nameOfObj)时，只会从a.jsp到b.jsp一次传递，
之后这个request 就会失去它的作用范围，再传就要再设一个 request.setAttribute()。而使用session.setAttribute()会在一个过程中始终保有这个值。
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
    
    <title>RequestScopeDemo</title>
    
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
    request.setAttribute("name","James");
    request.setAttribute("age","30");
    request.setAttribute("sex","男");
  %>
  <jsp:forward page="RequestScopeDemo02.jsp"></jsp:forward>
  </body>
</html>
