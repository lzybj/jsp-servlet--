<%@page import="com.bdqn.domain.Student"%>
<%@page import="com.bdqn.servcie.StudentService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student.jsp' starting page</title>
    
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
  	String nowPage = request.getParameter("page");
  	int nowPageInt = 1;
  	if(nowPage != null){
		nowPageInt = Integer.parseInt(nowPage);
  	}
  	StudentService ss = new StudentService();
  	List<Student> data = ss.getFYStudent(10, nowPageInt);
   %>
<table width="428" height="50" border="3">
  <tr>
    <th scope="col">stuid</th>
    <th scope="col">stuno</th>
    <th scope="col">stuname</th>
  </tr>
  <%
  	for(Student mystu : data){
   %>
  <tr>
    <td><%= mystu.getStuid()%></td>
    <td><%= mystu.getStudentNo()%></td>
    <td><%= mystu.getStudentName()%></td>
  </tr>
  <%
  	}
   %>
</table>
<%
	if(nowPageInt != 1){
 %>
<a href='student.jsp?page=<%= (nowPageInt - 1)%>'>上一页</a>
<%
	}
 %>
<a href='student.jsp?page=<%= (nowPageInt + 1)%>'>下一页</a>
  </body>
</html>
