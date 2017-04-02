/*
1、在WEB开发中，服务器可以为每个用户浏览器创建一个会话对象（session对象），注意：一个浏览器独占一个session对象(默认情况下)。因此，在需要保存用户数据时，
服务器程序可以把用户数据写到用户浏览器独占的session中，当用户使用浏览器访问其它程序时，其它程序可以从用户的session中取出该用户的数据，为用户服务。

2、服务器是如何实现一个session为一个用户浏览器服务的？
   服务器创建session出来后，会把session的id号，以cookie的形式回写给客户机，这样，只要客户机的浏览器不关，再去访问服务器时，
   都会带着session的id号去，服务器发现客户机浏览器带session id过来了，就会使用内存中与之对应的session为之服务。

3、Session和Cookie的主要区别
   Cookie是把用户的数据写给用户的浏览器。
   Session技术把用户的数据写到用户独占的session中。
   Session对象由服务器创建，开发人员可以调用request对象的getSession方法得到session对象。

4、
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
    
    <title>SessionDemo</title>
    
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
  		long creatTime=session.getCreationTime();//取得session的生成时间；
  		out.println("session生成时间："+creatTime+"<br>");//输出session的生成时间；
  		String sessionId=session.getId();
  		out.println("session的ID:"+sessionId+"<br>");
  		long lastTime=session.getLastAccessedTime();//最后通过session发送请求的时间；
  		out.println("最后通过session发送请求的时间:"+lastTime+"<br>");
  		boolean isnew=session.isNew();//判断session是不是新的；
  		out.println("是否为新的:"+isnew);
  	 %>
  </body>
</html>
