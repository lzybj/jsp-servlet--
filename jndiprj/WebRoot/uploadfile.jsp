<%@page import="java.io.File"%>
<%@page import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'uploadfile.jsp' starting page</title>
    
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
    		MultipartRequest mpr = new MultipartRequest(request,this.getServletContext().getRealPath("upload"),10*1024*1024,"GBK",new DefaultFileRenamePolicy());
    		String fname = mpr.getParameter("fname");
    		out.println(fname);
    		Enumeration<String> fnames = mpr.getFileNames();
    		while(fnames.hasMoreElements()){
    			File myfile = mpr.getFile(fnames.nextElement());
    			out.println(myfile.getName());
    		}
     %>
  </body>
</html>
