<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test4.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  	String num = request.getParameter("num");
  	List<String> data = null;
  	if(num == null){
  		data = (ArrayList<String>)session.getAttribute("data");
  	}else{
  	if(session.getAttribute("data") == null){
  	 	data = new ArrayList<String>();
  	}else{
  		data = (ArrayList<String>)session.getAttribute("data");
  	}
  	data.add(num);
  	session.setAttribute("data",data);
  	}
   %>
   <%
   if(data == null){
   		return;
   }
   	//遍历集合
   	for(String mysel : data){
    %>
    	 <h1><a href='test5.jsp?num=<%= mysel%>'><%= mysel%></a></h1><br>
    <%
    	}	
     %>
     <h1><a href='test3.jsp'>返回</a></h1><br>
     <h1><a href='test6.jsp'>清空购物车</a></h1>
     
  </body>
</html>
