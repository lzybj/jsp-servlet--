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
  	//���Ҫ��ѯ����(��������)
  	//�������ݿ�
  	//��ý��
  	//���������
  	request.setCharacterEncoding("UTF-8");//���õ�ǰ������ַ���
  	String studentname = request.getParameter("studentname");
    //����1�����ַ���ת��Ϊ�ֽ������ISO-8859-1��,����2��Ŀ���ַ������� gb2312
    //���õ�ǰ�����ĳһ������������ַ���
  	//studentname = new String(studentname.getBytes("ISO-8859-1"),"gb2312");
  	UsersService us = new UsersService();
  	List<Student> data = us.findByStudentName(studentname);
    %>
<table width="542" height="72" border="3">
  <tr>
    <th align="center" scope="col">ѧ��ѧ��</th>
    <th align="center" scope="col">ѧ����</th>
    <th align="center" scope="col">ѧ���Ա�</th>
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
