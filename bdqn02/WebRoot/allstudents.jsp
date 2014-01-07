<%@page import="com.bdqn.domain.Student"%>
<%@page import="com.bdqn.service.UsersService"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'allstudents.jsp' starting page</title>
    
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
  	//获得要查询条件(解析请求)
  	//连接数据库
  	//获得结果
  	//遍历结果集
  	request.setCharacterEncoding("UTF-8");//设置当前请求的字符集
  	String studentname = request.getParameter("studentname");
    //参数1，将字符串转化为字节数组的ISO-8859-1类,参数2：目标字符集类型 gb2312
    //设置当前请求的某一个请求参数的字符集
  	//studentname = new String(studentname.getBytes("ISO-8859-1"),"gb2312");
  	UsersService us = new UsersService();
  	List<Student> data = us.findByStudentName(studentname);
    %>
<table width="542" height="72" border="3">
  <tr>
    <th align="center" scope="col">学生学号</th>
    <th align="center" scope="col">学生名</th>
    <th align="center" scope="col">学生性别</th>
  </tr>
  <%
  	for(Student mystu : data){
   %>
  <tr>
    <td align="center"><%= mystu.getStudentNO()%></td>
    <td align="center"><a href='details.jsp?studentno=<%= mystu.getStudentNO()%>'><%= mystu.getStudentName()%></a></td>
    <td align="center"><%= mystu.getSex()%></td>
  </tr>
  <%
  }
   %>
</table>
  </body>
</html>
