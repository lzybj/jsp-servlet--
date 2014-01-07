<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

   <%
     	if(session.getAttribute("myUser") == null){
  		response.sendRedirect("login.jsp");
  		return;
        } 
    %>

