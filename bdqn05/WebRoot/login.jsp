<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
	//判断当前请求的客户端是否存在cookie
	if(session.getAttribute("err") == null){
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i = 0;i < cookies.length;i++){
			if(cookies[i].getName().equals("username")){
				response.sendRedirect("loginaction.jsp");
				return;
			}
		}
	}
	}
 %>
<form id="form1" name="form1" method="post" action="loginaction.jsp">
  <p>
    <input type="text" name="username" id="username" />
  </p>
  <p>
    <input type="password" name="password" id="password" />
  </p>
  <p>
  <input type="radio" name="ctime" id="radio" value="86400" />
  一天 
  <input type="radio" name="ctime" id="radio2" value="2592000" />
  一个月
  </p>
  <p>
    <input type="submit" name="button" id="button" value="提交" />
  </p>
</form>
<%
	if(session.getAttribute("err") != null){
		session.removeAttribute("err");
	//if(request.getParameter("err") != null){
		out.println("<h1>对不起，用户名或密码错误！</h1>");
	}
 %>
</body>
  </body>
</html>
