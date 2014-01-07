<%@page import="com.bdqn.domain.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	List<String> data = new ArrayList<String>();
	data.add("1");
	data.add("2");
	data.add("3");
	data.add("4");
	List<Users> data2 = new ArrayList<Users>();
	data2.add(new Users("sss",12));
	data2.add(new Users("yyy",16));
	Map<String,Users> data3 = new HashMap<String,Users>();
	data3.put("1",new Users("zzz",20));
	Users myUser = new Users("老李",30);
	session.setAttribute("username", "老郑");
	application.setAttribute("username","老王");
	session.setAttribute("user",myUser);
	session.setAttribute("arr",data);
	session.setAttribute("arr2",data2);
	session.setAttribute("arr3",data3);
	response.sendRedirect("test.jsp?testparam=123");
%>