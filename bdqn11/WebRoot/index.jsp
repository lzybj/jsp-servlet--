<%@page import="com.bdqn.domain.Message"%>
<%@page import="com.bdqn.service.MessageServcie"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	//获取要显示的页码
	int nowPage = 1;
	if(request.getParameter("page") != null){
		nowPage = Integer.parseInt(request.getParameter("page"));
	}
	MessageServcie ms = new MessageServcie();
	//调用分页业务逻辑方法
	List<Message> data = ms.fy(nowPage);
	
	//获得全部数据
	List<Message> data2 = ms.findByAll();
	int data2Count = data2.size();
    //总页数
	int pageCount = 1;
	//数据总条数除每页显示条数取余
	if(data2Count % 2 != 0){
		pageCount = data2Count / 2 + 1;
	}else{
		pageCount = data2Count / 2;
	}
	session.setAttribute("data",data);
	session.setAttribute("pagecount",pageCount);
	request.getRequestDispatcher("bbs_index.jsp?page=" + nowPage).forward(request,response);
%>