<%--
一般会将JSP文件的<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>(pageEncoding是JSP文件本身的编码)改成
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>(contentType的charset是指服务器发给客户端时的内容编码,
更常用)
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
    
    <title>multiplication table</title>
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
  	<%!
  		//通过表达式来调用，返回九九乘法表；
  		String printMultiTable1(){
  			String s="";
  			for(int i=0;i<=9;i++){
  				for(int j=0;j<=i;j++){
  					s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
  				}
  				s+="<br>";
  			}
  			return s;
  		}
  		
  		//JSP内置out对象，使用脚本方式调用，打印九九乘法表；
  		void printMultiTable2(JspWriter out) throws Exception{
  			for(int i=0;i<=9;i++){
  				for(int j=0;j<=i;j++){
  					out.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
  				}
  				out.println("<br>");
  			}
  			
  		}
  	 %>
  	<h1>九九乘法表</h1>
  	<hr>
  	<%=printMultiTable1() %>
  	<br>
  	<%printMultiTable2(out); %>
  	<br>
  </body>
</html>
