<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	//1.��������
	String userName = request.getParameter("username");
	String passWord = request.getParameter("password");
	//2.����ҵ���߼�
	UsersService us = new UsersService();
	//3.������Ӧ��ҵ�񷽷�������ý��
	boolean isSucc = us.isLogin(userName, passWord);
	//4.���ݽ����Ӧ(�ض���)
	if(isSucc){
		response.sendRedirect("cx.jsp");
	}else{
		response.sendRedirect("fail.jsp");
	}
%>