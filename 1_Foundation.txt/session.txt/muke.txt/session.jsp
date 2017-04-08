<%--
session的生命周期：

	1、创建：当客户端第一次访问某个JSP或者Servlet的时候，服务器会为当前回话创建一个sessionID，每次客户端向服务器发送请求时，
	都会将此sessionID携带过去，服务器端会对此sessionID进行校验。
	
	2、活动：*某次会话中通过超链接打开的新页面属于同一次回话。
		
		*只要当前会话页面没有全部关闭，重新打开新的浏览器窗口访问同一项目资源时属于同一次会话。
		
		*除非本次会话的所有页面都关闭后再重新访问某个JSP或者servlet将会创建新的会话。注意此时原有的会话还存在，只是这个旧的sessionid再也没有
		客户端会携带它然后交予服务器校验。
	
	3、销毁：*调用了session.invalidate()方法，
		
		*session过期（超时）
		
		*服务器重启
	

session对象：
	Tomcat的默认超时时间为30分钟。
	设置session超时有两种方式：
		1、session.setMaxInactiveInterval(时间);//单位是秒;
		2、在web.xml配置<session-config><session-timeout>10</session-timeout></session-config>//单位是分钟
--%>
<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>session内置对象</title>
    
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
    <h1>session内置对象</h1>
    <hr>
    <%
    	SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    	Date d=new Date(session.getCreationTime());
    	
    	session.setAttribute("username", "admin");
    	session.setAttribute("password", "123456");
    	session.setAttribute("age", 20);
    	
    	//设置当前session最大生存期限
    	session.setMaxInactiveInterval(10);
     %>
     
     Session创建时间：<%=sdf.format(d) %><br>
     Session的ID编号：<%=session.getId() %><br>
     从Session中获取用户名：<%=session.getAttribute("username") %><br>
     <%
     	session.invalidate();//销毁当前回话；
     %>
     <a href="session1.jsp" target="_blank">跳转到session1.JSP</a>
     
  </body>
</html>
