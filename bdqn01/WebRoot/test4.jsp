<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test4.jsp' starting page</title>
    
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
  	String newid = request.getParameter("newid");
  	String type = request.getParameter("type");
   %>
   <h1>这是我获得值<%= newid%> && <%= type%></h1>
   <%
   	String userName = request.getParameter("userName");
   	String grade = request.getParameter("grade");
   	String[] aihao = request.getParameterValues("aihao");
    %>
    <%= userName%><br>
    <%= grade%><br>
    <%	
    	  for(int i = 0;i < aihao.length;i++){
     %>
    <%= aihao[i]%>
    <%
    }
     %>
  </body>
</html>
