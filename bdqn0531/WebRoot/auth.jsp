<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
  	if(session.getAttribute("LOGIN_USERS") == null){
  		response.sendRedirect("login.jsp");
  		return;
  	}	
  	String mystr = "fffffff";
%>