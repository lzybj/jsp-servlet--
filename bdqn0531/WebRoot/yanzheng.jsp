<%@page import="com.bdqn.domain.Users"%>
<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!--
	1.解析请求(request.getParameter())
	2.调用业务逻辑，获得业务方法执行后的结果
	3.根据结果重定向或转发到显示页面中
	4.如果需要共享对象，则将对象放入到session中
 -->
<%
  	String userName = request.getParameter("username");
  	String passWord = request.getParameter("password");
  	//调用业务逻辑
  	UsersService us = new UsersService();
  	Users myUser = us.isLogin(userName, passWord);
  	if(myUser == null){
  		response.sendRedirect("login.jsp");
  		session.setAttribute("LOGIN_ERR","对不起，用户名或密码错误！");
  	}else{
  		session.setAttribute("LOGIN_USERS",myUser);
  		response.sendRedirect("main.jsp");
  	}  	
   %>
