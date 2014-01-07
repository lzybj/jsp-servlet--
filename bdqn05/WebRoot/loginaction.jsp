<%@page import="com.bdqn.domain.Users"%>
<%@page import="com.bdqn.service.UsersService"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String userName = request.getParameter("username");
	String passWord = request.getParameter("password");
	if(userName == null){//获取cookie
		boolean isCookieIn = false;//如果username的cookie存在，则为true
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
	//判断用户是否需要保存cookie，如果需要则创建cookie
		String ctime = request.getParameter("ctime");
		if(ctime != null){//客户需要保存cookie(用户名以及加密后的密码)
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
