<%@page import="com.bdqn.domain.Users"%>
<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!--
	1.��������(request.getParameter())
	2.����ҵ���߼������ҵ�񷽷�ִ�к�Ľ��
	3.���ݽ���ض����ת������ʾҳ����
	4.�����Ҫ��������򽫶�����뵽session��
 -->
<%
  	String userName = request.getParameter("username");
  	String passWord = request.getParameter("password");
  	//����ҵ���߼�
  	UsersService us = new UsersService();
  	Users myUser = us.isLogin(userName, passWord);
  	if(myUser == null){
  		response.sendRedirect("login.jsp");
  		session.setAttribute("LOGIN_ERR","�Բ����û������������");
  	}else{
  		session.setAttribute("LOGIN_USERS",myUser);
  		response.sendRedirect("main.jsp");
  	}  	
   %>
