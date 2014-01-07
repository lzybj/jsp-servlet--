<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	if(session.getAttribute("data") != null){
		session.removeAttribute("data");
		response.sendRedirect("test4.jsp");
	}
 %>
