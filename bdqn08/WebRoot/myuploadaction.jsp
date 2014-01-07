<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myuploadaction.jsp' starting page</title>
    
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
  	String uploadAddr = this.getServletContext().getRealPath("upload");
  	//out.println(uploadAddr);
  	//request,服务器上传地址,最大文件大小，字符集,重命名解决方案对象
  	MultipartRequest mpr = new MultipartRequest(request,uploadAddr,10*1024*1024,"gb2312",new DefaultFileRenamePolicy());
  	File myfile = mpr.getFile("myfile");
  	out.println(myfile.getName());
  	String addr = "upload/" + myfile.getName();
  	out.println(mpr.getParameter("content"));
   %>
   <img alt="myimg" src='<%= addr%>'>
  </body>
</html>
