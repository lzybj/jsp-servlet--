<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addnews.jsp' starting page</title>
    
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
  <form action="addnewsaction.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <p>
  标题：
  <input type="text" name="ntitle" id="ntitle" /></p>
  <p>内容：
    <textarea name="ncontent" id="ncontent" cols="45" rows="5"></textarea>
  </p>
  <p>上传：
    <input type="file" name="imgaddr" id="imgaddr" />
  </p>
  <p>
    <input type="submit" name="button" id="button" value="提交" />
  </p>
</form>
  </body>
</html>
