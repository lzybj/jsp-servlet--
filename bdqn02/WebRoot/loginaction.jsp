<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	//1.解析请求
	String userName = request.getParameter("username");
	String passWord = request.getParameter("password");
	//2.调用业务逻辑
	UsersService us = new UsersService();
	//3.调用相应的业务方法，并获得结果
	boolean isSucc = us.isLogin(userName, passWord);
	//4.根据结果响应(重定向)
	if(isSucc){
		response.sendRedirect("cx.jsp");
	}else{
		response.sendRedirect("fail.jsp");
	}
%>