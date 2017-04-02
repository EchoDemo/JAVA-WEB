/*
这里的request.setCharacterEncoding("gbk");的编码格式设置需要和HTML页面传送的参数的编码格式一致，否则会出现乱码。

1、getParameter得到的都是String类型的。或者是用于读取提交的表单中的值（http://a.jsp?id=123中的123），或者是某个表单提交过去的数据； 

2、getAttribute则可以是对象Object，需进行转换,可用setAttribute设置成任意对象，使用很灵活，可随时用； 

3、getAttribute()是获取对象容器中的数据值；

4、getAttribute()是获取SESSION的值； 

5、getParameter()是获取POST/GET传递的参数值； 

6、getParameter：用于客户端重定向时，即点击了链接或提交按扭时传值用，即用于在用表单或url重定向传值时接收数据用。 

7、getAttribute：用于服务器端重定向时，即在sevlet中使用了forward函数,或struts中使用了mapping.findForward。
   getAttribute只能收到程序用setAttribute传过来的值。 
   
8、setAttribute 是应用服务器把这个对象放在该页面所对应的一块内存中去，当你的页面服务器重定向到另一个页面时，
   应用服务器会把这块内存拷贝另一个页面所对应的内存中。这样getAttribute就能取得你所设下的值，当然这种方法可以传对象。
   session也一样，只是对象在内存中的生命周期不一样而已。 
   
9、getParameter只是应用服务器在分析你送上来的request页面的文本时，取得你设在表单或url重定向时的值。 

10、HttpServletRequest类既有getAttribute()方法，也由getParameter()方法； HttpServletRequest类有setAttribute()方法，而没有setParameter()方法； 
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
    
    <title>RequestDemo</title>
    
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
    request.setCharacterEncoding("gbk");
    String username=request.getParameter("username");
    String upassword=request.getParameter("upassword");
    String repassword=request.getParameter("repassword");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String sex=request.getParameter("sex");
  %>
  用户名：<%=username %><br>
  密码：<%=upassword %><br>
  确认密码：<%=repassword %><br>
  姓名：<%=name %><br>
  年龄：<%=age %><br>
  性别：<%=sex %>
  </body>
</html>
