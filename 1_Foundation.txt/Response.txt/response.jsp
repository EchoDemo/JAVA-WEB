<%--
  注意这里的response.getWriter()获得的输出流总是会打印在out输出流的前面，需要加上out.flush()才能让其按页面顺序打印输出。
  
  请求转发与请求重定向：
  	请求重定向：客户端行为，response.sendRedirect(),从本质上上来讲等同于两次请求，前一次请求对象不会保存，地址栏的URL会改变。
	
	请求转发：服务器行为，request.getRequestDispatcher().forward(req,resp);是一次请求，转发后请求对象会保存，地址栏的URL不会改变。
--%>

<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=UTF-8"%>
<%
	response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型
	
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	out.flush();
	
	PrintWriter outer=response.getWriter();//获得输出流对象；
	outer.println("大家好，我是response对象生成的输出流outer对象");
	//response.sendRedirect("index.jsp");//请求重定向；
	//请求重定向；
	//response.sendRedirect("login.jsp");
	//请求转发；
	request.getRequestDispatcher("login.jsp").forward(request,response);
	
%>



