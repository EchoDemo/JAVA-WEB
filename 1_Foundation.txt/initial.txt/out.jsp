<%--
out对象是JspWriter类的实例，是向客户端输出内容的常用对象，常用方法如下：

　　1、void println() 向客户端打印字符串

　　2、void clear() 清除缓冲区的内容，如果在flush之后调用会抛出异常

　　3、void clearbuffer() 清除缓冲区的内容，如果在flush之后调用不会抛出异常

　　4、void flush() 将缓冲区内容输出到客户端

　　5、int getBufferSize() 返回缓冲区以字节数的大小，如不设缓冲区则为0

　　6、int getRemaining() 返回缓冲区还剩余多少可用

　　7、boolean isAutoFlush() 返回缓冲区满时，是自动清空还是抛出异常

　　8、void close() 关闭输出流
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
    
    <title>out</title>
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
  	<h1>out内置对象</h1>
  	<%
  		out.println("<h2>静夜思</h2>");
  		out.println("床前明月光<br>");
  		out.println("疑是地上霜<br>");
  		out.flush();
  		//out.clear();//这里会抛出异常；
  		out.clearBuffer();
  		out.println("举头望明月<br>");
  		out.println("低头思故乡<br>");
  	 %>
  	 缓冲区大小：<%=out.getBufferSize() %>Byte<br>
  	 缓冲区剩余大小：<%=out.getRemaining() %>Byte<br>
  	 是否自动清空缓冲区：<%=out.isAutoFlush() %><br>
  </body>
</html>
