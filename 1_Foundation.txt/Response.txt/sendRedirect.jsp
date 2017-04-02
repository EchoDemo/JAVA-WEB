/*
如果为"yes" 则通过response的setContentType方法设置文件格式为Word，如果为"no" 则页面跳转到本身，相当于刷新了一下页面。
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
    
    <title>My JSP 'ResponseDemo.jsp' starting page</title>
    
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
    <p>将当前页面保存为word文档吗？</p>
    <form action="ResponseDemo.jsp" method="get" name=form>
    	<input type="submit" value="yes" name="submit">
    	<input type="submit" value="no" name="submit">
    </form>
    <%
    	String str=request.getParameter("submit");
    	if(str==null){
    		str="";
    	}
    	if(str.equals("yes")){
    		response.setContentType("application/msword;charset=UTF-8");//文件格式；
    	}
    	if(str.equals("no")){
    		response.sendRedirect("ResponseDemo.jsp");//response重定向；
    	}
     %>
  </body>
</html>
