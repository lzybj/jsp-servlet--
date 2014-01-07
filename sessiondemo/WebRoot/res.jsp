<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'res.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%!
    String testStr = "";
    public void test(){
      System.out.println("dasdas");
    }
   %>
  <body>
    <%
    Connection
    	  List<String> data = new ArrayList<String>();
    	 //1.获取PID值
    	 String pid = request.getParameter("pid");
    	 //2.从session中获取对象容器
    	 if(session.getAttribute("data") == null){//第一次取数
    	 	data.add(pid);
    	 }else{//再次取数
    	    data = (ArrayList<String>)session.getAttribute("data");
    	    data.add(pid);
    	 }
    	 session.setAttribute("data",data);
    	 //显示data容器内的数
    	 for(int i = 0;i < data.size();i++){
    	 %>
    	 <h1><%= data.get(i)%></h1><br>
    	 <%
    	 }
     %>
     <a href='test.jsp'><h1>返回</h1></a>
  </body>
</html>
