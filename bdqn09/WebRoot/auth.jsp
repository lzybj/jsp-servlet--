<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("myuser") == null){
		response.sendRedirect("login.jsp");
		return;
	}
%>