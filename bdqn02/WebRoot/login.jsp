<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
<form id="form1" name="form1" method="post" action="loginaction.jsp">
  <p>
    <label for="textfield"></label>
    �û�����
    <input type="text" name="username" id="username" />
  </p>
  <p>���룺
    <label for="textfield2"></label>
    <input type="password" name="password" id="password" />
  </p>
  <p>
    <input type="submit" name="button" id="button" value="�ύ" />
  </p>
</form>
  </body>
</html>
