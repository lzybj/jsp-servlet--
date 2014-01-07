<%@page import="com.bdqn.domain.BNews"%>
<%@page import="com.bdqn.service.NewsService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
  <%
  	List<BNews> data = (List<BNews>)session.getAttribute("data");
   %>
<table width="441" height="36">
<%
	for(BNews bnews : data){
 %>
  <tr>
    <td><a href='newsdetail.jsp?nid=<%= bnews.getNid()%>'><%= bnews.getnTitle()%></a></td>
  </tr>
<%
	}
 %>
</table>
  </body>
</html>
