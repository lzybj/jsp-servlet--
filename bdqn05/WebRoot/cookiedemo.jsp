<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cookiedemo.jsp' starting page</title>
    
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
    ����һ��COOKIE
    <%
    		//����cookie��������nameֵ,name��Ӧ��valueֵ
    		Cookie myCookie = new Cookie("cardno","S1000000010");
    		Cookie myCookie2 = new Cookie("ttt","ceshishidsf");
    		//���������Чʱ��,��Ϊ��λ
    		myCookie.setMaxAge(60*60);
    		myCookie2.setMaxAge(-1);
    		//��cookie��Ӧ���ͻ���
    		response.addCookie(myCookie);
    		response.addCookie(myCookie2);
     %>
  </body>
</html>
