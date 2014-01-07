<%@page import="com.bdqn.domain.BNews"%>
<%@page import="com.bdqn.service.NewsService"%>
<%@page import="com.bdqn.domain.Users"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//设定上传相关参数
	String uploadAddr = this.getServletContext().getRealPath("upload");
	String encode = "UTF-8";
	int maxSize = 12*1024*1024;
	MultipartRequest mpr = new MultipartRequest(request,uploadAddr,maxSize,encode,new DefaultFileRenamePolicy());
	String ntilte = mpr.getParameter("ntitle");
	String ncontent = mpr.getParameter("ncontent");
	String imgaddr = "upload/" + mpr.getFile("imgaddr").getName();
	Users myUser = (Users)session.getAttribute("myuser");
	int uid = myUser.getUid();
	NewsService ns = new NewsService();
	boolean isOK = ns.addNews(new BNews(ntilte,ncontent,imgaddr,uid));
	if(isOK){
		response.sendRedirect("alltitlesaction.jsp");
	}else{
		response.sendRedirect("addnews.jsp");
	}
 %>
