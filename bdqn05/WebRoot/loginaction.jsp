<%@page import="com.bdqn.domain.Users"%>
<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String userName = request.getParameter("username");
	String passWord = request.getParameter("password");
	if(userName == null){//��ȡcookie
		boolean isCookieIn = false;//���username��cookie���ڣ���Ϊtrue
		Cookie[] myCookies = request.getCookies();
		for(int i = 0;i < myCookies.length;i++){
			if(myCookies[i].getName().equals("username")){
				isCookieIn = true;
				break;
			}
		}
		if(isCookieIn){
			for(int j = 0;j < myCookies.length;j++){
				if(myCookies[j].getName().equals("username")){
					userName = myCookies[j].getValue();
				}
				if(myCookies[j].getName().equals("password")){
					passWord = myCookies[j].getValue();
				}
			}
		}else{
			response.sendRedirect("login.jsp");
			return;
		}
	}
	UsersService us = new UsersService();
	Users myUser = us.isLogin(userName, passWord);
	if(myUser == null){
		session.setAttribute("err","1");
		response.sendRedirect("login.jsp");
		//response.sendRedirect("login.jsp?err=1");
	}else{
	//�ж��û��Ƿ���Ҫ����cookie�������Ҫ�򴴽�cookie
		String ctime = request.getParameter("ctime");
		if(ctime != null){//�ͻ���Ҫ����cookie(�û����Լ����ܺ������)
			Cookie userNameCookie = new Cookie("username",userName);
			Cookie passWordCookie = new Cookie("password",passWord);
			userNameCookie.setMaxAge(Integer.parseInt(ctime));
			passWordCookie.setMaxAge(Integer.parseInt(ctime));
			response.addCookie(userNameCookie);
			response.addCookie(passWordCookie);
		}
		session.setAttribute("myUser",myUser);
		response.sendRedirect("main.jsp");
	}
 %>
