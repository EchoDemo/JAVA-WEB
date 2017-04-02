/*
1、什么是application对象 ？
  (1)当Web服务器启动时，Web服务器会自动创建一个application对象。application对象一旦创建，它将一直存在，直到Web服务器关闭。
 
  (2)一个Web服务器通常有多个Web服务目录 (网站)，当Web服务器启动时，它自动为每个Web服务目录都创建一个application对象，这些application对象各自独立，
     而且和Web服务目录一一对应。
 
  (3)访问同一个网站的客户都共享一个application对象，因此，application对象可以实现多客户间的数据共享。
     访问不同网站的客户，对应的application对象不同。
     
2、application对象的生命周期：从Web服务器启动，直到Web服务器关闭。

3、application对象的作用范围：application对象是一个应用程序级的对象，它作用于当前Web应用程序，也即作用于当前网站，
   所有访问当前网站的客户都共享一个application对象。
   
4、application对象的基类是：javax.servlet.ServletContext类。
   注意：有些Web服务器不直接支持使用application对象，必须用ServletContext类来声明application对象，
   再调用getServletContext()方法来获取当前页面的application对象。

5、ServletContext类：用于表示应用程序的上下文。
   一个ServletContext类的对象表示一个Web应用程序的上下文。具体来说：在Web服务器中，提供了一个Web应用程序的运行时环境，
   专门负责Web应用程序的部署、编译、运行以及生命周期的管理，通过ServletContext类，可以获取Web应用程序的运行时环境信息。
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
    
    <title>ApplicationDemo</title>
    
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
    int magorVersion=application.getMajorVersion();//主要的servlet API版本；
    int minorVersion=application.getMinorVersion();//次要的Servlet API版本；
    String info=application.getServerInfo();//服务器版本；
    String mimeStr=application.getMimeType("ApplicationDemo.jsp");//获得指定文件的mime类型；
    ServletContext contextStr=application.getContext("ApplicationDemo.jsp");//获得指定的Local的Application context；
    String pathStr=application.getRealPath("/"); 
  %>
	  <%="主要的servlet ApI版本："+magorVersion %><br>
	  <%="次要的servlet API版本:"+minorVersion %><br>
	  <%="服务器版本:"+info %><br>
	  <%="文件的MIME类型:"+mimeStr %><br>
	  <%="Application context:"+contextStr %><str>
	  <%="绝对路径："+pathStr %>
  </body>
</html>
