<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test2.jsp' starting page</title>
    
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
    		out.println(session.getAttribute("username"));
    		out.println(session.getAttribute("sex"));
    		List<String> data = (List<String>)session.getAttribute("mydata");
    		if(data == null){
    			response.sendRedirect("test.jsp");
    			return;
    		}
    		for(int i = 0;i < data.size();i++){
    			out.println("<h1>"+ data.get(i) +"</h1>");
    		}
    		System.out.println(session.getId());
     %>
  </body>
</html>
