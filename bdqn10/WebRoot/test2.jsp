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
   <!-- var:������������;scope:������ -->
   <c:remove var="username" scope="session"/>
   <c:if test="${username != null}">
   	<c:out value="${username }"></c:out>
   </c:if>
   <!-- test:����(true/false) scope:������;var:�ȽϽ��-->
   <c:if test="${username == null }" scope="session" var="ttt">
   	<c:out value="�Բ���SESSION������Բ����ڣ�"></c:out>
   </c:if>
   <%-- 
  <h1>userName:<c:out value="${username }" default="�Բ���SESSION�����ڣ�"></c:out></h1><br>
  --%>
  <h1><c:out value="${data }"></c:out></h1><br>
  <!-- items:���󼯺�/����;
   var:����Ԫ�ر���
   begin:������ʼ����,Ĭ��0��end:���Ͻ�������;
   step:����;varStatus:���ϱ�����ǰ״̬����; 
   xxx.index��ñ�����Iֵ -->
   <c:if test="${data == null }">
   	<c:out value="�Բ��𣬼��ϲ����ڣ�"></c:out>
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
