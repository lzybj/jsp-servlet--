<%@page import="com.bdqn.domain.Student"%>
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
    
    <title>My JSP 'test2.jsp' starting page</title>
    
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
  	//����û������ѧ��
  	String stuno = request.getParameter("stuno");
  	Connection conn = null;
  	Statement stmt = null;
  	ResultSet rs = null;
  	String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=Myschool";
  	String sql = "";
  	List<Student> data = new ArrayList<Student>();
  	try{
  		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  		conn = DriverManager.getConnection(url,"sa","qaz123");
  		stmt = conn.createStatement();
  		sql = "select studentno,StudentName,Sex,floor(DATEDIFF(DD,BornDate,GETDATE()) / 365) as age from student where studentno like '%"+ stuno +"%'";
  		rs = stmt.executeQuery(sql);
  		while(rs.next()){
  			data.add(new Student(rs.getString("studentno"),rs.getString("studentname"),rs.getString("sex"),rs.getInt("age")));
  		}
  		rs.close();
  		stmt.close();
  		conn.close();
  	}catch(Exception e){
  		e.printStackTrace();
  	}
  	
  	
   %>
  <table width="521" height="50" border="3">
  <tr>
    <th scope="col">ѧ��ѧ��</th>
    <th scope="col">����</th>
    <th scope="col">�Ա�</th>
    <th scope="col">����</th>
  </tr>
  <%
  for(int i = 0;i < data.size();i++){
  	Student myStu = data.get(i);
   %>
  <tr>
    <td><%= myStu.getStudentNo()%></td>
    <td><%= myStu.getStudentName()%></td>
    <td><%= myStu.getSex()%></td>
    <td><%= myStu.getAge()%></td>
  </tr>
  <%
  	}
   %>
</table>
  </body>
</html>
