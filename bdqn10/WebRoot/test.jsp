<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
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
  	String str = "老郑";
  	session.setAttribute("ttt", str);
   --%>
   <!-- var:变量/某个共享域中的对象别名,value:值,scope：作用域，默认作用域page -->
   <c:set var="ttt" value="老郑"  scope="session"></c:set>
   ${sessionScope.ttt }
   <!--
   	EL表达式与out标记的区别：out标记有默认值 
    -->
   <c:out value="${yyy }" default="对不起，对象不存在！"></c:out>
   
   <c:out value="${param.userName }" default="没有取到userName值"></c:out>
  </body>
</html>
