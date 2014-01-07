<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <%--
  	List<String> data3 = new ArrayList<String>();
  	data3.add("1");
   --%>
   <!-- var:共享域对象别名;scope:共享域 -->
   <c:remove var="username" scope="session"/>
   <c:if test="${username != null}">
   	<c:out value="${username }"></c:out>
   </c:if>
   <!-- test:条件(true/false) scope:共享域;var:比较结果-->
   <c:if test="${username == null }" scope="session" var="ttt">
   	<c:out value="对不起，SESSION相关属性不存在！"></c:out>
   </c:if>
   <%-- 
  <h1>userName:<c:out value="${username }" default="对不起，SESSION不存在！"></c:out></h1><br>
  --%>
  <h1><c:out value="${data }"></c:out></h1><br>
  <!-- items:对象集合/集合;
   var:集合元素别名
   begin:集合起始索引,默认0，end:集合结束索引;
   step:步进;varStatus:集合遍历当前状态对象; 
   xxx.index获得遍历的I值 -->
   <c:if test="${data == null }">
   	<c:out value="对不起，集合不存在！"></c:out>
   </c:if>
   <c:if test="${data != null }">
  <c:forEach items="${data }" var="str">
  	<h1><c:out value="${str }"></c:out></h1><br>
  </c:forEach>
  </c:if>
  <h1><c:out value="${data2 }"></c:out></h1><br>
  <c:forEach items="${data2 }" var="myuser">
  	<h1><c:out value="${myuser.userName }"></c:out></h1><br>
  	<h1><c:out value="${myuser.age }"></c:out></h1><br>
  </c:forEach>
  <%-- 
  <c:forEach items="<%= data3%>" var="str2">
  	<c:out value="${str2 }"></c:out>
  </c:forEach>
  --%>
  </body>
</html>
