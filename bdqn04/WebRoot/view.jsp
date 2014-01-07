<%@page import="com.bdqn.domain.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view.jsp' starting page</title>
    
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
  	System.out.println(session.getId());
   %>
<table width="503" height="54" border="3">
  <tr>
    <th width="167" align="center" scope="col">学号</th>
    <th width="224" align="center" scope="col">姓名</th>
    <th width="86" align="center" scope="col">性别</th>
  </tr>
  <%
  	List<Student> data = (List<Student>)session.getAttribute("data");
  	for(Student stu : data){
   %>
  <tr>
    <td align="center"><%= stu.getStudentNo()%></td>
    <td align="center"><%= stu.getStudentName()%></td>
    <td align="center"><%= stu.getSex()%></td>
  </tr>
  <%	
  	}
   %>
</table>
  </body>
</html>
