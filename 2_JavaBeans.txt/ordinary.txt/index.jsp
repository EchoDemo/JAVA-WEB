<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.javabeans.Users" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  		Users user=new Users();
  		user.setUsername("admin");
  		user.setPassword("123456");
  	 %>
    <h2>使用普通方式创建JavaBeans的实例</h2>
    <hr>
    用户名：<%=user.getUsername() %>
    密码：<%=user.getPassword() %>
  </body>
</html>
