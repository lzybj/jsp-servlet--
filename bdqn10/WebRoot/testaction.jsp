<%@page import="com.bdqn.domain.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	session.setAttribute("username","��֣");
	List<String> data = new ArrayList<String>();
	data.add("1");
	data.add("2");
	data.add("3");
	data.add("4");
	data.add("5");
	session.setAttribute("data",data);
	List<Users> data2 = new ArrayList<Users>();
	data2.add(new Users("����",30));
	data2.add(new Users("����",20));
	data2.add(new Users("�ϳ�",35));
	data2.add(new Users("�Ϻ�",40));
	session.setAttribute("data2",data2);
	request.getRequestDispatcher("test2.jsp").forward(request,response);
 %>
