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
  		List<String> data = null;
  		String num = request.getParameter("num");
  		if(session.getAttribute("data") == null){
  			data = new ArrayList<String>();
  		}else{
  			data = (ArrayList<String>)session.getAttribute("data");
  		}
  		data.add(num);
  		session.setAttribute("data",data);
  		for(int i = 0;i < data.size();i++){
  		   out.println("<h1>"+ data.get(i) +"</h1>");
  		}
  	 %>
    <h1><a href='test3.jsp'>·µ»Ø</a></h1>
  </body>
</html>
