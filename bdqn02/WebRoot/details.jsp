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
    
    <title>My JSP 'details.jsp' starting page</title>
    
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
  	String studentno = request.getParameter("studentno");
  	Connection conn = null;
  	Statement stmt = null;
  	ResultSet rs = null;
  	String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=Myschool";
  	String sql = "";
  	try{
  		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  		conn = DriverManager.getConnection(url, "sa","qaz123");
  		stmt = conn.createStatement();
  		sql = "select studentno,studentname,sex,BornDate from student where studentno = '"+ studentno +"'";
  		rs = stmt.executeQuery(sql);  	
   %>
<table width="277" height="266" border="3">
  <%
  	if(rs.next()){
   %>
  <tr>
    <th width="105" align="center" scope="col">学生学号</th>
    <th width="152" align="center" scope="col"><%= rs.getString("studentno")%></th>
  </tr>
  <tr>
    <td align="center">学生姓名</td>
    <td align="center"><%= rs.getString("studentname")%></td>
  </tr>
  <tr>
    <td align="center">学生性别</td>
    <td align="center"><%= rs.getString("sex")%></td>
  </tr>
  <tr>
    <td align="center">出生日期</td>
    <td align="center"><%= rs.getString("borndate")%></td>
  </tr>
  <%
  }//ifrs
  rs.close();
  stmt.close();
  conn.close();
  
  }catch(Exception e){
  	e.printStackTrace();
  }
   %>
</table>
  </body>
</html>
