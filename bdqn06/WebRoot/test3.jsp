<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test3.jsp' starting page</title>
    
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
  <%!
  	//ÉùÃ÷
  	String str = "44444";
  	public void exec(){
  		System.out.println("ssssss");
  	}
   %>
    <%
    		out.println(application.getAttribute("count"));
    		exec();
    		out.println(str);
     %>
     <%
     	List<String> usernames = (List<String>)application.getAttribute("usernames");
     	for(String username : usernames){
      %>
      <%= username%><br>
      <%
      	}
       %>
  </body>
</html>
