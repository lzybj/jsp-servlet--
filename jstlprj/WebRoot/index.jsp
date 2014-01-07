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
    This is my JSP page. <br>
    <c:set var="ttt" value="zzz" scope="session"></c:set>
    <c:remove var="ttt" scope="session"/>
    <c:out value='${ttt }' default="0"></c:out>
    <c:catch var="yy">
    	<%
    		out.println(10/0);
    	 %>
    </c:catch>
    <c:out value='${yy }'></c:out>
    <c:if test="${param.username == ''}">
    	  对不起，为空！
    </c:if>
    <c:set var="score" value="75"></c:set>
    <c:choose>
    		<c:when test="${score >= 80 }">
    			ok
    		</c:when>
    		<c:when test="${score >= 70 && score < 80 }">
    			一般
    		</c:when>
    		<c:otherwise>
    			差
    		</c:otherwise>
    </c:choose>
    <%
    	     ArrayList<String> data = new ArrayList<String>();
    	     data.add("1");
    	     data.add("2");
    	     session.setAttribute("data", data);
     %>
    <c:forEach var="tt" items='${data }'>
    	<c:out value='${tt }'></c:out>
    </c:forEach>
    <%-- 
    <c:import url="http://www.baidu.com"></c:import>
    --%>
    <c:catch var="ee">
    <c:redirect url="ttt.jsp"></c:redirect>
    </c:catch>
    <c:out value='${ee }'></c:out>
  </body>
</html>
