<%@page import="com.bdqn.domain.BNews"%>
<%@page import="com.bdqn.service.NewsService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  	NewsService ns = new NewsService();
  	List<BNews> data = ns.getAllTitles();
  	session.setAttribute("data",data);
  	response.sendRedirect("list.jsp");
%>