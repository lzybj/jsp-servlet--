<%@page import="com.bdqn.domain.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
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
  <%@include file="auth.jsp" %>
  <%= mystr%>
  <%
  	Users myUser = (Users)session.getAttribute("LOGIN_USER");
   %>
    <h1>µÇÂ¼³É¹¦£¡<%= myUser.getUserName()%> <%= myUser.getSex()%></h1>
    
    <a href='test3.jsp'>test3</a>
  </body>
</html>
