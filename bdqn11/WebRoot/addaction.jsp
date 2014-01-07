<%@page import="com.bdqn.service.MessageServcie"%>
<%@page import="com.bdqn.domain.Message"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String author = request.getParameter("author");
	String message = request.getParameter("message");
	Message mes = new Message(message,author);
	MessageServcie ms = new MessageServcie();
	boolean isOK = ms.addMessage(mes);
	if(isOK){
		response.sendRedirect("index.jsp");
	}else{
		session.setAttribute("err","1");
		response.sendRedirect("index.jsp");
	}
%>