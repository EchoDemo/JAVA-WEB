<%--
  注意这里的response.getWriter()获得的输出流总是会打印在out输出流的前面，需要加上out.flush()才能让其按页面顺序打印输出。
--%>

<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=UTF-8"%>
<%
	response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型
	
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	out.flush();
	
	PrintWriter outer=response.getWriter();//获得输出流对象；
	outer.println("大家好，我是response对象生成的输出流outer对象");
	response.sendRedirect("index.jsp");
%>



