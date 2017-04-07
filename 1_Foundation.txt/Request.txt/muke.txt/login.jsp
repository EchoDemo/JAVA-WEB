<%--

--%>

<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>request内置对象</title>
    
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
    <h1>request内置对象</h1>
    <hr>
    	<%
    		request.setCharacterEncoding("utf-8");  //解决中文乱码问题,无法解决URL传参数的中文乱码问题。
    	 %>
           用户名：<%=request.getParameter("username") %><br>
           爱好：<%
            if(request.getParameterValues("favorite")!=null){
            	String[] favorites=request.getParameterValues("favorite");
           		for(int i=0;i<favorites.length;i++){
           			out.println(favorites[i]+"&nbsp;&nbsp;");
           		}
            }
           	
            %>
  </body>
</html>
