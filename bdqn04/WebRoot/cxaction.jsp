<%@page import="com.bdqn.domain.Student"%>
<%@page import="com.bdqn.service.StudentServcie"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  	System.out.println(session.getId());
   %>
<%

	//1. 解析请求
	request.setCharacterEncoding("UTF-8");
	String studentName = request.getParameter("studentname");
	//2.调用业务逻辑类
	StudentServcie ss = new StudentServcie();
	//3.调用业务方法，获得结果
	List<Student> data = ss.findByStudentName(studentName);
	//4.将结果存入SESSION中共享
	session.setAttribute("data",data);
	//5.重定向到JSP（view.jsp）
	response.sendRedirect("view.jsp");
%>