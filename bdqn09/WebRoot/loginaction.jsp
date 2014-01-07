<%@page import="com.bdqn.domain.Users"%>
<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String uName = request.getParameter("uname");
	String uPwd = request.getParameter("upwd");
	UsersService us = new UsersService();
	Users myUser = us.isLogin(uName, uPwd);
	if(myUser != null){
		session.setAttribute("myuser",myUser);
		request.getRequestDispatcher("addnews.jsp").forward(request,response);
	}else{
		session.setAttribute("err","1");
		response.sendRedirect("login.jsp");
	}
%>