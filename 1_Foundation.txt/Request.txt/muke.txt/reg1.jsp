<%--使用URL传参数时，对于中文字符会产生乱码，此时需要对Tomcat下的conf文件夹里面的的server.xml文件进行修改，在端口修改所在的地方加上
URIEncoding="utf-8"


如：
<Connector port="80" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" URIEncoding="utf-8" />
	       
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
    
    <title>用户注册</title>
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
  	<h1>用户注册</h1>
  	<form action="login.jsp" method="post">
  		<table>
  			<tr>
  				<td>用户名：</td>
  				<td><input type="text" name="username"/></td>
  			</tr>
  			<tr>
  				<td>爱好：</td>
  				<td>
  					<input type="checkbox" name="favorite" value="read"/>读书
  					<input type="checkbox" name="favorite" value="music"/>音乐
  					<input type="checkbox" name="favorite" value="movie"/>电影
  					<input type="checkbox" name="favorite" value="Internet"/>上网
  				</td>
  			</tr>
  			<tr>
  				<td colspan="2"><input type="submit" value="提交"></td>
  			</tr>
  		</table>
  	</form>
  	<br>
  	<br>
  	<a href="login.jsp?username=李四">测试URL传参数</a>
  </body>
</html>
