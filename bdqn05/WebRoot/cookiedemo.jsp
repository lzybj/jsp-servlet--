<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cookiedemo.jsp' starting page</title>
    
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
    创建一个COOKIE
    <%
    		//创建cookie对象，设置name值,name对应的value值
    		Cookie myCookie = new Cookie("cardno","S1000000010");
    		Cookie myCookie2 = new Cookie("ttt","ceshishidsf");
    		//设置最大有效时间,秒为单位
    		myCookie.setMaxAge(60*60);
    		myCookie2.setMaxAge(-1);
    		//将cookie响应给客户端
    		response.addCookie(myCookie);
    		response.addCookie(myCookie2);
     %>
  </body>
</html>
