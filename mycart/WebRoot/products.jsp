<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'products.jsp' starting page</title>
    
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
<c:if test="${sessionScope.data != null}">
<table width="548" height="50" border="2">
  <tr>
    <th align="center" scope="col">产品ID</th>
    <th align="center" scope="col">产品名称</th>
    <th align="center" scope="col">产品价格</th>
    <th align="center" scope="col">操作</th>
  </tr>
  <c:forEach items="${data }" var="myitem">
  <tr>
    <td align="center"><c:out value="${myitem.productID }"></c:out></td>
    <td align="center"><c:out value="${myitem.productName }"></c:out></td>
    <td align="center"><c:out value="${myitem.unitPrice }"></c:out></td>
    <td align="center"><a href='addcart?productid=<c:out value="${myitem.productID }"></c:out>'>添加购物车</a></td>
  </tr>
  </c:forEach>
</table>
</c:if>
<c:if test="${sessionScope.data == null}">
	<c:redirect url="product"></c:redirect>
</c:if>
  </body>
</html>
