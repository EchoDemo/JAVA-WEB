<%--
pageContext对象是javax.servlet.jsp.PageContext类的实例，主要表示的是一个JSP页面的上下文。可以访问和当前页面相关联的所有作用域，
及一些页面属性，他相当于页面中所有功能的集大成者。

1、JspWriter getOut() 返回当前客户端响应被使用的JspWriter流(out)

2、HttpSession getSession() 返回当前页中的HttpSession对象(session)

3、Object getPage() 返回当前页的Object对象(page)

4、ServletRequest getRequest() 返回当前页的ServletRequest对象(request)

5、ServletResponse getResponse() 返回当前页的ServletResponse对象(response)

6、Exception getException() 返回当前页的Exception对象(exception)

7、ServletConfig getServletConfig() 返回当前页的ServletConfig对象(config)

8、ServletContext getServletContext() 返回当前页的ServletContext对象(application)

9、void setAttribute(String name,Object attribute) 设置属性及属性值

10、void setAttribute(String name,Object obj,int scope) 在指定范围内设置属性及属性值

11、public Object getAttribute(String name) 取属性的值

12、Object getAttribute(String name,int scope) 在指定范围内取属性的值

13、public Object findAttribute(String name) 寻找一属性,返回起属性值或NULL

14、void removeAttribute(String name) 删除某属性

15、void removeAttribute(String name,int scope) 在指定范围删除某属性

16、int getAttributeScope(String name) 返回某属性的作用范围

17、Enumeration getAttributeNamesInScope(int scope) 返回指定范围内可用的属性名枚举

18、void release() 释放pageContext所占用的资源

19、void forward(String relativeUrlPath) 使当前页面重导到另一页面

20、void include(String relativeUrlPath) 在当前位置包含另一文件


--%>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PageContext</title>
    
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
  	<h1>PageContext内置对象</h1><br>
  	<hr>
  	<%
  		session.setAttribute("username", "admin");
  		session.setAttribute("favorite", "读书");
  	 %>
   	返回当前客户端响应被使用的JSPWriter流(out):<%=pageContext.getOut()%><br>
   	返回当前页中的session对象：<%=pageContext.getSession()%><br>
   	返回当前页中的Object对象：<%=pageContext.getPage() %><br>
   	用户名是：<%=pageContext.getSession().getAttribute("username") %><br>
   	爱好是：<%=pageContext.getSession().getAttribute("favorite") %><br>
  
   	
   	
   
  </body>
</html>
