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
  	String str = "��֣";
  	session.setAttribute("ttt", str);
   --%>
   <!-- var:����/ĳ���������еĶ������,value:ֵ,scope��������Ĭ��������page -->
   <c:set var="ttt" value="��֣"  scope="session"></c:set>
   ${sessionScope.ttt }
   <!--
   	EL���ʽ��out��ǵ�����out�����Ĭ��ֵ 
    -->
   <c:out value="${yyy }" default="�Բ��𣬶��󲻴��ڣ�"></c:out>
   
   <c:out value="${param.userName }" default="û��ȡ��userNameֵ"></c:out>
  </body>
</html>
