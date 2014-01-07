<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
<c:if test="${data != null }">
<table width="550" height="185">
<c:forEach items="${data }" var="mes"> 
  <tr>
  <th>
    <table width="528" height="187" border="2">
      <tr>
        <th height="20" align="left" scope="col">作者：<c:out value="${mes.author }"></c:out></th>
      </tr>
      <tr>
        <td height="20" align="right"><c:out value="${mes.id }"></c:out>#</td>
      </tr>
      <tr>
        <td height="93"><c:out value="${mes.message }"></c:out></td>
      </tr>
      <tr>
        <td align="right">发表：<c:out value="${mes.postTime }"></c:out></td>
      </tr>
    </table>
   </th>
  </tr>
</c:forEach>
</table>
<p>
<c:if test="${param.page != 1 }">
<a href='index.jsp?page=${(param.page)-1 }'>上一页</a>
</c:if>
<c:if test="${sessionScope.pagecount != param.page }">
<c:remove var="pagecount" scope="session"/>
<a href='index.jsp?page=${(param.page)+1 }'>下一页</a></p>
</c:if>
</c:if>
<p>--------------------------------------------------------------------------------------------</p>
<form id="form1" name="form1" method="post" action="addaction.jsp">
  <p>
    用户名：
    <input type="text" name="author" id="author" />
  </p>
  <p>
    留言信息：
    <textarea name="message" id="message" cols="45" rows="5"></textarea>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="提交" />
  </p>
</form>
<c:if test="${err != null }">
	<c:remove var="err"/>
	<c:out value = "对不起，添加留言失败！"></c:out>
</c:if>
  </body>
</html>