<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
    <%--
    		out.println(session.getAttribute("username").toString());
     --%>
     <!-- 单个对象取值 -->
     ${applicationScope.username }<br>
     <!-- 获取对象中某个属性值 -->
     ${user.userName }<br>
     ${user.age }<br>
     <!-- 获取list集合中某个索引对应的元素 -->
     ${arr[0] }<br>
     ${arr[1] }<br>
     ${arr[2] }<br>
     ${arr[3] }<br>
     <!-- 获取map集合中某个key对应对象的属性值 -->
     ${arr2[1].age }<br>
     ${arr3["1"].age }<br>
     ${param.testparam }
  </body>
</html>
